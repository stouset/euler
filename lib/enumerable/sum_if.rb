module Enumerable
  def sum_if
    self.sum {|n| yield(n) ? n : 0 }
  end
end
