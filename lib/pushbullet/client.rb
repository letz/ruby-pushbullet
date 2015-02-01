module Pushbullet
  class Client
    require 'rest_client'

    API_VERSION = 2
    END_POINT =  "https://api.pushbullet.com/v#{API_VERSION}/"

    def get(path)
      JSON.parse(generic_request(path).get)
    end

    def post(path, params = {})
      JSON.parse(generic_request(path).post params)
    end

    def put(path, params = {})
      JSON.parse(generic_request(path).put params)
    end

    def delete(path, params = {})
      JSON.parse(generic_request(path).delete params)
    end

    def generic_request(path)
      RestClient::Resource.new("#{END_POINT}#{path}", Pushbullet.api_token, '')
    end
  end
end
