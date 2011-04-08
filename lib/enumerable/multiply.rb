require 'enumerable/combine'

module Enumerable
  def multiply(*initial)
    self.combine(*initial, &:*)
  end
end
