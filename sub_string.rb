dictionary = ["below", "below", "down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string, array)
  to_hash = Hash.new
  sentance_array = string.split(' ')
  for words in sentance_array
    edit_word = words.delete("!", ",", ".")
    string_array = edit_word.split('')
    for word in array 
      present = true
      word_array = word.split('')
      for letter in word_array
        unless string_array.include?(letter)
          present = false
        end 
      end
      if present == true 
        if to_hash.keys.include?(word)
          to_hash[word] += 1
        else
          to_hash[word] = 1
        end
      end
    end
  end
  puts to_hash
end


# substrings("below", dictionary)
substrings("Howdy partner, sit down! How's it going?", dictionary)