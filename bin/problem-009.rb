#!/usr/bin/env ruby -Ilib -rrubygems -reuler

1_000.split(3).detect {|a,b,c| a ** 2 + b ** 2 == c ** 2 }.multiply.put
