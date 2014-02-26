module Orchestrate
  module Demo

    # Show the response from Orchestrate.io.
    #
    module ShowResponse

      def show_response?
        @show_response == true
      end

      def show_response(response, show_results=true)
        show_response_httparty_api response, show_results
        response
      end

      def show_response_httparty_api(response, show_results)
        if show_response?
          # puts "------------------------------------"
          puts "Success: #{response.success?}"
          puts "Code:    #{response.header.code}"
          puts "Status:  #{response.header.status}"
          puts "------- Response HEADERS ----------"
          response.header.content.each { |k,v| puts "Header: '#{k}' => '#{v}'" }
          puts "------- Response BODY -------------\n"
          if response.body.content.blank?
            puts "Body:   Empty"
          else
            response.body.to_hash.each do |k,v|
              next if k == 'results'
              puts "Body: '#{k}' => '#{v}'"
            end

            if response.body.to_hash['results']
              if show_results == true
                total_count = response.body.to_hash['count']
                count = 1
                puts "Body: 'results' => '#{total_count} results'"
                response.body.results.each do |result|
                  puts "------- Result #{count}/#{total_count} -----------------"
                  puts "Key:   '#{result['path']['key']}'" if result['path']
                  puts "Value: '#{result['value']}'"
                  puts "Timestamp: '#{result['timestamp']}'" if result['timestamp']
                  count += 1
                end
              else
                puts "Body: 'result keys' => '#{response.body.result_keys}'"
              end
            end
          end
          puts "------------------------------------\n"
          $stdout.flush
        end
      end

      # -------------------------------------------------------------------------

      def show_response_httparty_raw(response, show_results)
        if show_response?
          puts "Response success: '#{response.success?}'"
          puts "Response code:    '#{response.code}'"
          puts "Response msg :    '#{response.message}'"
          puts "Response headers:"
          response.headers.each { |k,v| puts "  Header: '#{k}' => '#{v}'" }
          if response.body.blank?
            puts "Response body:    Empty"
          else
            ActiveSupport::JSON.decode(response.body).each do |k,v|
              puts "  Body: '#{k}' => '#{v}'"
            end
          end
          $stdout.flush
        end
      end

  	end
  end
end