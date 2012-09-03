def palindrome?(str)
  # YOUR CODE HERE
  str_reverse = str.reverse
  if str_reverse == str then
    true
  else
    false
  end
end

def count_words(str)
  # YOUR CODE HERE
  hash = Hash.new(0)
  str.each do |word|
    hash[word] += 1
  end
  hash
end
