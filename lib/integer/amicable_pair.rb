class Integer
  def amicable_pair
    self.aliquot_sum.into do |sum|
      sum if sum != self and sum.aliquot_sum == self
    end
  end
end
