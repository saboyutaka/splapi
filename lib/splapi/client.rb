require 'uri'
require 'splapi/resource_based_methods'
require 'splapi/version'

module SplAPI
  class Client
    DEFAULT_ACCEPT = 'application/json'
    DEFAULT_HOST = 'http://splapi.retrorocket.biz'
    DEFAULT_USER_AGENT = "SplAPI Ruby Gem #{SplAPI::VERSION}"
    DEFAULT_HEADERS = {
      'Accept' => DEFAULT_ACCEPT,
      'User-Agent' => DEFAULT_USER_AGENT
    }

    include ResourceBasedMethods

    def connection
      @connection ||= Faraday.new(faraday_client_options) do |connection|
        connection.request :json
        connection.response :json
        connection.adapter Faraday.default_adapter
      end
    end

    def get(path, params = nil, headers = nil)
      connection.send(:get, URI.escape(path), params, headers)
    end

    private

      def faraday_client_options
        {
          headers: DEFAULT_HEADERS.clone,
          url: DEFAULT_HOST
        }
      end
  end
end
