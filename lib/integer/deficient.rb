class Integer
  def deficient?
    self > self.aliquot_sum
  end
end
