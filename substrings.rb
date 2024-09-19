# Only works if all dictionary words are downcase

def substrings(str, dict)
  result = {}
  dict.each do | s |
    occurrences = substring_idxs(str, s).length
    result[s] = occurrences if occurrences > 0
  end
  result
end

def substring_idxs(string, substring)
  if substring.length > string.length
    []
  else
    idxs = []
    for idx in 0..(string.length-substring.length) do
      if string[idx..idx+substring.length-1].downcase == substring
        idxs.push(idx)
      end
    end
    idxs
  end
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
p substrings("below", dictionary)
p substrings("Howdy partner, sit down! How's it going?", dictionary)