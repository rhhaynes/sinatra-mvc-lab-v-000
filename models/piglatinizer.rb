class Piglatinizer
  attr_reader :text
  
  def initialize(text)
    @text = text
  end
  
  def piglatin
    text.split(" ").collect{|word| translate(word)}.join(" ")
  end
  
  private
  
  def translate(str)
    vow = %w[a e i o u]
    con = ("a".."z").to_a - vow
    
    while con.include?(str[0])
      str += str[0]
      str = str[1..-1]
    end
    str + 'ay'
  end
  
end