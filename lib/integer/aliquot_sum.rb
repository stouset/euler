class Integer
  #
  # http://bit.ly/qWBaiN
  #
  def aliquot_sum
    self.factorize.multiply do |prime, exponent|
      (prime ** (exponent + 1) - 1) / (prime - 1)
    end - self
  end
end
