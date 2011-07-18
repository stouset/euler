module Enumerable
  def multiply(initial = 1)
    self.reduce(initial, &:*)
  end
end
