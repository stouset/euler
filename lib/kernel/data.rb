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
end