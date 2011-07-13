module Math
  COLLATZ = Hash.new do |cache, n|
    cache[n] = case
      when n.even? then 1 + cache[n / 2]
      else              1 + cache[(3 * n) + 1]
    end
  end.update(1 => 1)
  
  def self.collatz(n)
    COLLATZ[n]
  end
end
