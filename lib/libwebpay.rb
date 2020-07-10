# frozen_string_literal: true

require 'signer'
require 'savon'
require_relative './libwebpay/verifier'
require_relative './libwebpay/configuration'
require_relative './libwebpay/webpay'

# Base namespace for the webpay intreface
module Libwebpay
  class << self
    def webpay(config = {})
      @webpay ||= Webpay.new(config)
    end

    def configuration
      @configuration ||= Configuration.new
    end
  end
end
