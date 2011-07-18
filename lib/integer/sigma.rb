class Integer
  def sigma(pow = 1)
    self.divisors.map {|n| n ** pow }.sum
  end
end
