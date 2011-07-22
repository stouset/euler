gem 'minitest'

require 'minitest/autorun'
require 'minitest/pride'
require 'pathname'

require 'euler'

class Object
  #
  # Capture any methods named `problem_nnn` and eval the appropriate binary.
  #
  def method_missing(method, *args, &block)
    return super unless method =~ /problem_\d{3}/
    
    Pathname.new("bin/#{method.to_s.gsub('_', '-')}").into do |path|
      eval path.read,
        binding,
        path.to_s
    end
  end
end
