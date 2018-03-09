class Piglatinizer
  attr_reader :text
  
  def initialize(text)
    @text = text
  end
  
  def piglatinize
    text.split(" ").collect{|word| translate(word)}.join(" ")
  end
  
  private
  
  def translate(str)
    vow = %w[a e i o u]
    con = ("a".."z").to_a - vow
    
    if vow.include?(str[0])
      str + 'ay'
    elsif consonants.include?(str[0]) && consonants.include?(str[1])
      str[2..-1] + str[0..1] + 'ay'
    elsif consonants.include?(str[0])
      str[1..-1] + str[0] + 'ay'
    else
      str # return unchanged
    end
  end
  
end