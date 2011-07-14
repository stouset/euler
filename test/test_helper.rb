gem 'minitest'

require 'minitest/spec'
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

    eval Pathname.new("bin/#{method.to_s.gsub('_', '-')}").read
  end
end
