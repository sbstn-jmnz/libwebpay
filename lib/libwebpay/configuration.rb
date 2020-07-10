# frozen_string_literal: true

# This is just a simple object with accesors for the configuration parameters
class Configuration
  attr_accessor :environment,
                :commerce_code,
                :private_key,
                :public_cert,
                :webpay_cert,
                :store_codes
end
