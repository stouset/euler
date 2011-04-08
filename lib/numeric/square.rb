require 'numeric/round'

class Numeric
  def square?
    self.sqrt.round?
  end
end
