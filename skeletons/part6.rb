class Numeric
  @@currencies = {'yen' => 0.013, 'euro' => 1.292, 'rupee' => 0.019}
  def method_missing(method_id)
    singular_currency = method_id.to_s.gsub( /s$/, '')
    if @@currencies.has_key?(singular_currency)
      self * @@currencies[singular_currency]
    else
      super
    end
  end
end

class String
  # YOUR CODE HERE
  def palindrome?
    if self.casecmp(self.reverse.downcase) == 0 then
      return true
    else
      return false
    end
  end
end

module Enumerable
  # YOUR CODE HERE
  def palindrome?
    if self.to_a == reverse_each(self).to_a then
      return true
    else
      return false
    end
  end
end
