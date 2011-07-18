module Enumerable
  def multiply(*initial)
    self.reduce(*initial, &:*)
  end
end
