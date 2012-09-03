class Dessert
  def initialize(name, calories)
    # YOUR CODE HERE
    @name = name
    @calories = calories
  end
  
  def healthy?
    # YOUR CODE HERE
    if @calories < 200
      return true
    else 
      return false
    end
  end
  
  def delicious?
    # YOUR CODE HERE
    true
  end
end

class JellyBean < Dessert
  def initialize(name, calories, flavor)
    # YOUR CODE HERE
    @name = name
    @calories = calories
    @flavor = flavor
  end
  
  def delicious?
    # YOUR CODE HERE
    if @flavor.casecmp("black licorice")
      return false
    else
      return true
    end
  end
end
