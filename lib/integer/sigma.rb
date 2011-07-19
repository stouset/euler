class Integer
  #
  # http://bit.ly/qWBaiN
  #
  def sigma(pow = 1)
    self.factorize.multiply do |prime, exponent|
      (0..exponent).sum {|i| (prime ** i) ** pow }
    end
  end
end
