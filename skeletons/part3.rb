def combine_anagrams(words)
 # YOUR CODE HERE
 hash = Hash.new()
 words.each do |word|
  sorted_word = word.sort.downcase
  if hash[sorted_word] != nil
   hash[sorted_word] << word
  else
   hash[sorted_word] = [word]
  end
 end
 result = []
 hash.each do |key, value|
  result << value 
 end
 result
end
