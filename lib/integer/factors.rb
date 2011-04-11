require 'prime'

class Integer
  def factors
    self.factorize.map(&:first)
  end
end