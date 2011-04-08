require 'prime'

class Integer
  def factors
    Prime.prime_division(self).map(&:first)
  end
end