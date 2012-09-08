def palindrome?(str)
  # YOUR CODE HERE
  str = str.downcase.gsub(/\W/, '')
  str_reverse = str.reverse
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
