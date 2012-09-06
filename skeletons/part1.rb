def palindrome?(str)
  # YOUR CODE HERE
  str = str.reverse.downcase.gsub(/[\s \W \p{Pc}]/, '')
  str_reverse = str.reverse.downcase.gsub(/[\s \W \p{Pc}]/, '')
  if str_reverse == str then
    return true
  else
    return false
  end
end

def count_words(str)
  # YOUR CODE HERE
  hash = Hash.new(0)
  str.each do |word|
    hash[word.downcase] += 1
  end
  hash
end
