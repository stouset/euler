require 'matrix'

module Kernel
  def data(file = File.basename(caller.first).gsub(/:.*/, ''))
    YAML.load_file("data/#{file}.yaml")
  end
   
  def data_s
    DATA.read.gsub(%r{\n}, '')
  end
  
  def data_i
    data_s.to_i
  end
  
  def data_f
    data_s.to_f
  end
  
  def data_a(&block)
    DATA.readlines.map(&block)
  end
  
  def data_ai
    data_a(&:to_i)
  end
  
  def data_m(&block)
    Matrix[ *DATA.read.split(%r{\n}).map {|line| line.split.map(&block) } ]
  end
  
  def data_mi
    data_m(&:to_i)
  end
end
