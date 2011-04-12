#!/usr/bin/env ruby -Ilib -rrubygems -reuler

Math::RATIONALS.detect {|n| n.triangle.divisors_count > 500 }.triangle.put
