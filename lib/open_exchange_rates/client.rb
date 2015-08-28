require "open_exchange_rates/client/connections"
require "open_exchange_rates/client/historical"

module OpenExchangeRates
  class Client
    include HTTParty
    include Connections
    include Historical

    base_uri 'https://openexchangerates.org/api/'

    def initialize(app_id = nil)
      app_id ||= ENV['OPEN_EXCHANGE_RATES_APP_ID']
      fail 'Please define your app_id, see https://github.com/Ynnni/open-exchange-rates' unless app_id
      self.class.default_params app_id: app_id
    end
  end
end