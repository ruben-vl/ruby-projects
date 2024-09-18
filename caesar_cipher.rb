def caesar_cipher(input_string, shift_factor)
  letters_downcase = ('a'..'z').to_a
  letters_upcase = ('A'..'Z').to_a
  output = []
  input_string.chars.each do |ch|
    if letters_downcase.include?(ch)
      idx = letters_downcase.find_index(ch)
      output.push(letters_downcase[(idx+shift_factor)%letters_downcase.length])
    elsif letters_upcase.include?(ch)
      idx = letters_upcase.find_index(ch)
      output.push(letters_upcase[(idx+shift_factor)%letters_upcase.length])
    else
      output.push(ch)
    end
  end
  output.join
end

puts caesar_cipher("What a string!", 5)