class Integer
  def factorial
    raise 'Cannot take the factorial of a negative number' if self < 0
    
    (2..self).multiply(1)
  end
end