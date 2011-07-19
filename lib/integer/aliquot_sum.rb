class Integer
  #
  # http://bit.ly/qWBaiN
  #
  def aliquot_sum
    # equivalent to `self.sigma - self`, but this is noticeably faster until
    # we find a definition of sigma that can use a variant of this method's
    # inner loop
    self.factorize.multiply do |prime, exponent|
      (prime ** (exponent + 1) - 1) / (prime - 1)
    end - self
  end
end
