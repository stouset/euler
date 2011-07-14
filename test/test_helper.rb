gem 'minitest'

require 'minitest/spec'
require 'minitest/autorun'
require 'minitest/pride'
require 'pathname'

require 'euler'

def method_missing(method, *args, &block)
  case method
    when /problem_\d{3}/ then `bin/#{method.to_s.gsub('_', '-')}`.chomp
    else                      super
  end
end
