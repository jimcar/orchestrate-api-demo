module Orchestrate
  module Demo

    require "./lib/example-data"
    require "./lib/show_response"
    require "./lib/lib_api"

    # -------------------------------------------------------------------------
    #  Populate the Orchestrate.io example application, 'films' collection
    #  with sample data.
    #
    class Base
      include FilmData

      attr_accessor :verbose, :collection, :name

      def initialize(show_response)
        @collection = Orchestrate::Demo::LibApi.new show_response
        @name = 'films'
        init_film_data @name

      end

      def collection
        @collection
      end

      # -----------------------------------------------------------------------

      def flush_films_example
        collection.flush name
      end

      def delete_films_example
        collection.delete name
      end

      def populate_films_example
        collection.populate(name, @films)
        collection.populate_events(name, 'the_godfather', 'comments', @comments)
        collection.populate_graph(@film_relations)

        collection.populate(name, @movies)
        collection.populate_graph(@movie_relations)
      end
    end

    # -----------------------------------------------------------------------

    def self.populate(verbose=false)
      demo = Base.new verbose
      demo.verbose
      demo.delete_films_example
      demo.populate_films_example
    end

    def self.full_demo
      demo = Base.new
    end

    if ARGV.length > 0
      if ARGV.first =~ /-p/
        show_response = (ARGV[1] && ARGV[1] =~ /-s/) ? true : false
        Orchestrate::Demo.populate show_response
      end
    else
      puts "Usage: orchestrate-demo [options]"
      puts "\nOptions:"
      puts "\n -p, -populate         Populate the demo collection."
      puts "\n -s, -show_response    Show response for each HTTP request."
      puts "\n"
    end

  end

end





