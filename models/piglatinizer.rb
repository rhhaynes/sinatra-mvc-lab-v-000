class Piglatinizer
  attr_reader :text
  
  def initialize(text)
    @text = text.gsub(/[^\S \r\n]/,"")
  end
  
end