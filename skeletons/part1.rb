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
  hash = {}
  str.each do |word|
    hash[word] += 1
  end
end
