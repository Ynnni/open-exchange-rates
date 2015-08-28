module OpenExchangeRates
  class Client
    module Historical
      def historical(date)
        get "/historical/#{date.iso8601}.json"
      end
    end
  end
end