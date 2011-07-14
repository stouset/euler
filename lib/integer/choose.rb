class Integer
  def choose(k)
    (1..k).map {|i| (self - (k - i)) / i.to_f }.multiply.to_i
  end
end