class PigLatinizer
  
  def piglatinize
    text.split(" ").collect{|word| translate(word)}.join(" ")
  end
  
  private
  
  def translate(str)
    vow = %w[a e i o u]
    con = ("a".."z").to_a - vow
    
    if vow.include?(str[0].downcase)
      str + "way"
    else
      while con.include?(str[0].downcase)
        str += str[0]
        str = str[1..-1]
      end
      str + "ay"
    end
  end
  
end