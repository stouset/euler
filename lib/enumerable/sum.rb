require 'enumerable/combine'

module Enumerable
  def sum(*initial)
    self.combine(*initial, &:+)
  end
end
