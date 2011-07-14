require 'matrix'

module Kernel
  def data(file = File.basename(caller.first).gsub(/:.*/, ''))
    YAML.load_file("data/#{file}.yaml")
  end
end
