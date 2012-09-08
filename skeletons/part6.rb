class Numeric
  @@currencies = {'yen' => 0.013, 'euro' => 1.292, 'rupee' => 0.019, 'dollar' => 1.000}
  def method_missing(method_id)
    money = 0.0
  #  arguments.each do |method_id|
     singular_currency = method_id.to_s.gsub( /s$/, '')
      if @@currencies.has_key?(singular_currency)
      money = self * @@currencies[singular_currency]
      else
        super
      end
  #  end
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
      self.downcase.gsub(/\W/, '') == self.downcase.gsub(/\W/, '').reverse
  end
end

module Enumerable
  # YOUR CODE HERE
  def palindrome?
     self.to_a == self.to_a.reverse
  end
end

