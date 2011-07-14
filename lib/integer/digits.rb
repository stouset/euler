class Integer
  def digits
    self.to_s.split(//).map(&:to_i)
  end
end
