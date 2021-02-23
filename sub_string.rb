def substrings(str, dictionary)
    result = Hash.new(0)
    lowered_str = str.downcase

    dictionary.each do |word| 
      found = lowered_str.scan(word).length
      result[word] = found unless found == 0
    end

    return result
end


dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

p substrings("Howdy partner, sit down! How's it going?", dictionary)
