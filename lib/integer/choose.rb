class Integer
  def choose(k)
    (1..k).map {|i| (self - (k - i)).to_r / i }.multiply.to_i
  end
end