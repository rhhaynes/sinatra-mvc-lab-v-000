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
    
    if vow.include?(str[0])
      str + 'ay'
    elsif con.include?(str[0])
      while con.include?(str[0])
        str[2..-1] + str[0..1] + 'ay'
      end
    else
      str
    end
  end
  
end