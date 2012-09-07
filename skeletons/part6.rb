class Numeric
  @@currencies = {'yen' => 0.013, 'euro' => 1.292, 'rupee' => 0.019, 'dollar' => 1.000}
  def method_missing(method_id)
    puts method_id.to_s
    singular_currency = method_id.to_s.gsub( /s$/, '')
    if @@currencies.has_key?(singular_currency)
      self * @@currencies[singular_currency]
    #the 'in(:currency) method
    elsif singular_currency.include?('in')
      currency = method_id.to_s.gsub(/[(]/, '')
      currency = currency.to_s.gsub(/[)]/, '')
      singular_currency = currency.to_s.gsub(/s$/, '')
      rate = 1 / @@currencies[singular_currency]
      self * rate
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
