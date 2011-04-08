#!/usr/bin/env ruby -Ilib -rrubygems -reuler

(1..999).select {|i| i.multiple?(3) or i.multiple?(5) }.sum.put
