class Numeric
  Math.methods(false).each do |method|
    define_method method do |*args|
      Math.send(method, self, *args)
    end
  end
end
