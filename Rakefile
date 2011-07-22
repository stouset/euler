require 'rake/testtask'

task :default => :test

task :test do
  system %{ RUBYLIB='.:lib:test' parallel_test }
end
