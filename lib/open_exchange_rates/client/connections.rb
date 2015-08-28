module OpenExchangeRates
  class Client
    module Connections
      def get(path, options = {})
        request :get, path, options
      end

      def request(http_method, path, options)
        response = self.class.send http_method, path, { query: options }
        data = response.parsed_response
        parse_rates data
      end

      def parse_rates(data)
        data['rates']
      end
    end
  end
end