#!/usr/bin/env ruby -Ilib -rrubygems -reuler

(100..999).combination(2).map(&:multiply).select(&:palindrome?).max.put