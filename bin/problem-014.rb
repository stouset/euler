#!/usr/bin/env ruby -Ilib -rrubygems -reuler

(1..999_999).max_by(&:collatz).put
