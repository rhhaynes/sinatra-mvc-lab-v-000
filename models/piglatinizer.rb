class Piglatinizer
  attr_reader :text
  
  def initialize(text)
    @text = text.gsub(//,"")
  end
  
end