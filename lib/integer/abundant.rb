class Integer
  def abundant?
    self < self.aliquot_sum
  end
end
