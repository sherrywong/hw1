class Class
  def attr_accessor_with_history(attr_name)
    attr_name = attr_name.to_s   # make sure it's a string
    attr_reader attr_name        # create the attribute's getter
    attr_reader attr_name+"_history" # create bar_history getter
    hash_attr = Hash.new(0)
    class_eval ("def #{attr_name}; @#{attr_name}; end")
    class_eval ("def #{attr_name}=(val); @#{attr_name} = val; #{hash[@attr_name] << val}; end"
    class_eval ("def #{attr_name+'_history'}; return #{hash[@attr_name]}; end")
    end
end
