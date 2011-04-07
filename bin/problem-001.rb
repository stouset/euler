#!/usr/bin/ruby -w -Ilib

require 'euler'

(1..999).select {|i| i.multiple?(3) or i.multiple?(5) }.sum.put