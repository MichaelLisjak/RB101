def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  #p dot_separated_words
  if dot_separated_words.size != 4
    return false
  end
  while dot_separated_words.size > 0 do
    word = dot_separated_words.pop
    if is_an_ip_number?(word) == false
      return false
    end
  end
  return true
end


def is_an_ip_number?(word)
  (word.to_i >= 0) && (word.to_i <= 255)
end

p dot_separated_ip_address?('192.168.10.123') == true
p dot_separated_ip_address?('0.168.10.0') == true
p dot_separated_ip_address?('256.168.256.123') == false
p dot_separated_ip_address?('255.168.256.123.23') == false
p dot_separated_ip_address?('123.168.256') == false


