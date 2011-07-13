module Math
  FIBONACCI = Enumerator.new do |e|
    a = 1
    b = 1
    
    loop do
      e.yield(a)
      a, b = a + b, a
    end
  end
end
