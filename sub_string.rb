dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
  
def substrings(some_arr, some_word)
    some_word=some_word.delete(",!.?")
    p some_word
    some_word=some_word.split(" ")
    puts some_word
   final_hash = some_arr.reduce(Hash.new(0)) do |hash, words|
    some_word.map do |word_check|   
      if word_check.include?(words)
        hash[words]+=1
      end
    end
    hash
end
end

puts substrings(dictionary, "Howdy partner, sit down! How's it going?")