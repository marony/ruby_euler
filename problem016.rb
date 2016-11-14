#!/usr/bin/env ruby

POWER = 1000

x = 2 ** POWER
answer = x.to_s.each_char.inject(0) {|acc, item| acc + item.to_i }

print "answer = " + answer.to_s
