def palindrome?(str)
  # YOUR CODE HERE
  str = str.reverse.downcase.
  #get rid of spaces, nonwords, punctuations
  gsub(/[\s \W \p{Pc}]/, '')
  str_reverse = str.reverse.downcase.
  #get rid of spaces, nonwords, punctuations
  gsub(/[\s \W \p{Pc}]/, '')
  if str_reverse == str then
    return true
  else
    return false
  end
end

def count_words(str)
  # YOUR CODE HERE
  hash = Hash.new(0)
  str = str.downcase.split
  str.each do |word|
    word = word.gsub(/[\W]/, '')
    if !word.empty?
      hash[word] += 1
    end
  end
  hash
end
