class Integer
  def divisors
    self.factorize.flat_map {|a| a * a.pop }.into do |factors|
      1.upto(factors.length).flat_map {|n| factors.combination(n).sort }
    end.uniq.map(&:multiply).unshift(1)
  end
end
