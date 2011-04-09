#!/usr/bin/env ruby -Ilib -rrubygems -reuler

1.upto(20).reduce(&:lcm).put
