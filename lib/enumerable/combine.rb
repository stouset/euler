module Enumerable
  def combine(*initial, &block)
    unless initial.length < 2
      raise ArgumentError, "wrong number of arguments (#{initial.length} for 0..1)"
    end
    
    initial.any? ? self.reduce(initial.first, &block) : self.reduce(&block)
  end
end
