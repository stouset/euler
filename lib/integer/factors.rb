require 'prime'

class Integer
  def factorize
    Prime.prime_deivision(self)
  end
  
  def factors
    self.factorize.map(&:first)
  end
end