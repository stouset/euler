module Enumerable
  def multiply(initial = 1, &mapper)
    self.map(&mapper).reduce(initial, &:*)
  end
end
