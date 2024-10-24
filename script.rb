def substrings(str, dictionary)
  list = Hash.new(0)
  test = str.downcase
  for word in dictionary
    if test.include?(word)
      list[word] = test.scan(word).length
    end
  end
  list
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts "String: below"
puts substrings("below", dictionary)
puts
puts "String: Howdy partner, sit down! How's it going?"
puts substrings("Howdy partner, sit down! How's it going?", dictionary)