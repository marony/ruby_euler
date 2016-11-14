#!/usr/bin/env ruby

print (2..100).inject(1) {|acc, item| acc * item }.to_s.split(//).inject(0) {|acc, item| acc + item.to_i }
