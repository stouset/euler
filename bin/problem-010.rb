#!/usr/bin/env ruby -Ilib -rrubygems -reuler

Prime.instance.take_while {|p| p <= 2_000_000 }.sum.put