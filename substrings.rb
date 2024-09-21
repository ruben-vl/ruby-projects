# frozen_string_literal: true

# Only works if all dictionary words are downcase

def substrings(str, dict)
  result = {}
  dict.each do |s|
    occurrences = substring_idxs(str, s).length
    result[s] = occurrences if occurrences.positive?
  end
  result
end

def substring_idxs(string, substring)
  if substring.length > string.length
    []
  else
    idxs = []
    (0..(string.length - substring.length)).each do |idx|
      idxs.push(idx) if string[idx..idx + substring.length - 1].downcase == substring
    end
    idxs
  end
end

dictionary = %w[below down go going horn how howdy it i low own part partner sit]
p substrings('below', dictionary)
p substrings("Howdy partner, sit down! How's it going?", dictionary)
