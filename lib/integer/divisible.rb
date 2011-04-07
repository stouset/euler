class Integer
  def divisible?(divisor)
    (self % divisor).zero?
  end
  
  alias multiple? divisible?
end
