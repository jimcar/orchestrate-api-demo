module Orchestrate::Demo

  require 'orchestrate-api'

  #  Simple library for making common HTTP requests to orchestrate.io.
  #
  class LibApi
    include ShowResponse

    def initialize(show_response)
      @show_response = show_response
      client.verbose = true if show_response
    end

    # -------------------------------------------------------------------------
    #
    def populate(name, data)
      data.keys.each do |key|
        show_response client.delete_key(collection: name, key: key)

        show_response client.put_key(
          collection: name, key: key, json: data[key]
        )
      end
    end

    # -------------------------------------------------------------------------
    #
    def populate_events(name, key, event_type, events)
      already_populated =
        show_response(client.get_events(
          collection: name, key: key, event_type: event_type
        )).body.count > 0

      unless already_populated == true
        events.each do |event|
          show_response client.put_event(
            collection: name,
            key:        key,
            event_type: event_type,
            json:       event
          )
        end
      end
    end

    # -------------------------------------------------------------------------
    #
    def populate_graph(relations)
      relations.each do |relation|
        show_response client.put_graph relation
      end
    end

    # -------------------------------------------------------------------------
    #
    def get_keys(name)
      client.list(collection: name, path: '?limit=100').body.result_keys
    end

    # -------------------------------------------------------------------------
    #
    def search(name, query)
      show_response client.search(collection: name, query: query)
    end

    # -------------------------------------------------------------------------
    #
    def flush(name)
      get_keys(name).each do |key|
        show_response client.delete_key(collection: name, key: key)
      end
    end

    # -------------------------------------------------------------------------
    #
    def delete(name)
      show_response client.delete_collection(collection: name)
    end

    # -------------------------------------------------------------------------
    #
    def get(name, event_types=[], graphs=[])
      r = show_response client.list(collection: name, path: '?limit=100')
      r.body.results.each do |result|
        key = result['path']['key']
        show_response client.get_key(collection: name, key: key)

        event_types.each do |etype|
          show_response client.get_events(
            collection: name, key: key, event_type: etype
          )
        end

        graphs.each do |graph|
          show_response client.get_graph(
            collection: name, key: key, kind: graph
          )
        end
      end
    end

    # -------------------------------------------------------------------------
    #  'lib/orch_config-demo.json'
    #
    #    {
    #      "base_url":"https://api.orchestrate.io/v0",
    #      "user":"<api-key-from-orchestrate.io>",
    #      "verbose":"true"
    #    }
    #
    def client
      @orchio_client ||= Orchestrate::API::Wrapper.new('./orchestrate_config.json')
    end
  end

end
