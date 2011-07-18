module Enumerable
  def amicable_numbers
    self.select {|n| n.amicable_pair.in?(self) }
  end
end
