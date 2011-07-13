#!/usr/bin/env ruby -Ilib -rrubygems -reuler

Math::NATURALS.detect {|n| n.triangle.divisors_count > 500 }.triangle.put
