class Integer
  def split(components, min = 1)
    return to_enum(:split, components) unless block_given?
    return yield [ self ] if components == 1
    return                if components <  1
    
    min.upto(self / components) do |n|
      (self - n).split(components - 1, n) {|c| yield c.unshift(n) }
    end
  end
end
