#!/usr/bin/ruby -w -Ilib -rrubygems -reuler

Math::FIBONACCI.take_while {|n| n <= 4_000_000 }.select(&:even?).sum.put
