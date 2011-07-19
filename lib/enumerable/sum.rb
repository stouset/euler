module Enumerable
  def sum(initial = 0, &mapper)
    self.map(&mapper).reduce(*initial, &:+)
  end
end
