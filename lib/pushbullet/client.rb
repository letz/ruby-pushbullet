module Pushbullet
  class Client
    require 'rest_client'

    API_VERSION = 2
    END_POINT =  "https://api.pushbullet.com/v#{API_VERSION}/"

    def get(path)
      JSON.parse(generic_request(path).get &handle_error)
    end

    def post(path, params = {})
      JSON.parse(generic_request(path).post params, &handle_error)
    end

    def put(path, params = {})
      JSON.parse(generic_request(path).put params, &handle_error)
    end

    def delete(path, params = {})
      JSON.parse(generic_request(path).delete params, &handle_error)
    end

    def generic_request(path)
      RestClient::Resource.new("#{END_POINT}#{path}", Pushbullet.api_token, '')
    end

    private

    def handle_error
      proc do |response, request, result, &block|
        if response.code >= 400 && response.code <= 500
          fail Pushbullet::Error, JSON.parse(response)['error']['message']
        else
          response.return!(request, result, &block)
        end
      end
    end
  end
end
