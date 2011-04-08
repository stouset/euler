require 'lazylist'

module Math
  FIBONACCI = list(0, 1) do
    build { a + b }.where(:a => FIBONACCI, :b => FIBONACCI.drop(1))
  end
end
