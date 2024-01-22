# lib/dog_api/client.rb

require 'httparty'

module DogApi
  class Client
    include HTTParty
    base_uri 'https://dogapi.dog/api/v2'

    def request(endpoint, method, options = {})
      self.class.send(method, endpoint, options)
    end

    def list_all_breeds
      response = self.class.get('/breeds', headers: @headers)
      if response.success?
        response.parsed_response
      else
        raise StandardError, "Error fetching breeds: #{response.message}"
      end
    end
  end
end
