require 'signer'
require 'savon'
require_relative './libwebpay/verifier'
require_relative './libwebpay/configuration'
require_relative './libwebpay/webpay'

module Libwebpay  
  
  class << self
    def Webpay(config = {})
      @webpay ||= Webpay.new(config)
    end

    def Configuration
      @configuration ||= Configuration.new
    end
  end
end
