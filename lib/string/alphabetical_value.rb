class String
  def alphabetical_value
    self.upcase.split(//).map {|letter| letter.ord - 64 }.sum
  end
end
