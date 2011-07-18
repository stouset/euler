module Enumerable
  def sum(*initial)
    self.reduce(*initial, &:+)
  end
end
