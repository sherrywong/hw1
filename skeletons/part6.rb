class Numeric
  @@currencies = {'yen' => 0.013, 'euro' => 1.292, 'rupee' => 0.019, 'dollar' => 1.000}
  def method_missing(*arguments)
    money = 0.0
    arguments.each do |method_id|
     singular_currency = method_id.to_s.gsub( /s$/, '')
      if @@currencies.has_key?(singular_currency)
        money = self * @@currencies[singular_currency]
      else
        super    
      end
    end
    return money
  end
  
  def in(currency)
    singular_currency = currency.to_s.gsub(/s$/, '')
      if @@currencies.has_key?(singular_currency)
        self / @@currencies[singular_currency]
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
  def method_missing(method_id)
    if method_id == 'palindrome?'
      self.send(:palindrome?, self)
    end
  end
end

module Enumerable
  # YOUR CODE HERE
  def palindrome?
      self.send(:palindrome?, self.to_s)
  end
end