class Integer
  def perfect?
    self == self.aliquot_sum
  end
end
