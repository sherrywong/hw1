class CartesianProduct
  include Enumerable
  # YOUR CODE HERE
  attr_accessor :collection1, :collection2
  
  def initialize (collection1, collection2)
    @collection1 = collection1
    @collection2 = collection2
  end
  
  def each
    if @collection1.empty? or @collection2.empty?
      yield []
    else
      for i in 0..collection1.length-1
        for j in 0..collection2.length-1
          yield [collection1[i], collection2[j]]
        end
      end
    end
  end
end