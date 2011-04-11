require 'matrix'

module Kernel
  def data_s
    DATA.read.gsub(%r{\n}, '')
  end
  
  def data_i
    data_s.to_i
  end
  
  def data_f
    data_s.to_f
  end
  
  def data_m(&block)
    Matrix[ *DATA.read.split(%r{\n}).map {|line| line.split.map(&block) } ]
  end
  
  def data_mi
    data_m(&:to_i)
  end
end
