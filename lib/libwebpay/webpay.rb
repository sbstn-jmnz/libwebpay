
require_relative 'webpaymallnormal'
require_relative 'webpaynormal'
require_relative 'webpaynullify'
require_relative 'webpaycapture'
require_relative 'webpayoneclick'
require_relative 'webpaycomplete'

class Webpay
  attr_reader :config
  def initialize(params)
    @config = params
  end
  
  def NormalTransaction
    @webpayNormal ||= WebpayNormal.new(@config)
  end
  
  def MallNormalTransaction
    @webpayMallNormal ||= WebpayMallNormal.new(@config)
  end
  
  def NullifyTransaction
    @webpayNullify ||= WebpayNullify.new(@config)
  end
  
  def CaptureTransaction
    @webpayCapture ||= WebpayCapture.new(@config)
  end
  
  def OneClickTransaction
    @webpayOneClick ||= WebpayOneClick.new(@config)
  end
  
  def CompleteTransaction
    @webpayCompleteTransaction ||= WebpayComplete.new(@config)
  end
end



