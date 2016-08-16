def substrings(string, dictionary)
  words = string.downcase.split(' ')
  hits_per_word = {}
  words.each do |word|
    dictionary.each do |entry|
      hits = word.scan(entry)
      if hits.length > 0
        if hits_per_word[entry] != nil
          hits_per_word[entry] += hits.length
        else
          hits_per_word[entry] = hits.length
        end
      end
    end
  end
  puts hits_per_word
  return hits_per_word
end

dictionary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]
substrings("below", dictionary)
substrings("Howdy partner, sit down! How's it going?", dictionary)
