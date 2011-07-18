class Integer
  def proper_divisors
    self.divisors.leave(1)
  end
  
  alias aliquot_parts proper_divisors
end
