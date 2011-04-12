class Integer
  def divisors_count
    return 1 if self == 1
    
    # http://mathschallenge.net/index.php?
    #   section=faq&ref=number/number_of_divisors
    self.factorize.map(&:last).map(&:succ).multiply
  end
end
