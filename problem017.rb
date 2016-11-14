#!/usr/bin/env ruby

@data = {
  1 => "one",
  2 => "two",
  3 => "three",
  4 => "four",
  5 => "five",
  6 => "six",
  7 => "seven",
  8 => "eight",
  9 => "nine",
  10 => "ten",
  11 => "eleven",
  12 => "twelve",
  13 => "thirteen",
  14 => "fourteen",
  15 => "fifteen",
  16 => "sixteen",
  17 => "seventeen",
  18 => "eighteen",
  19 => "nineteen",
  20 => "twenty",
  30 => "thirty",
  40 => "forty",
  50 => "fifty",
  60 => "sixty",
  70 => "seventy",
  80 => "eighty",
  90 => "ninety",
  100 => "one hundred",
  200 => "two hundred",
  300 => "three hundred",
  400 => "four hundred",
  500 => "five hundred",
  600 => "six hundred",
  700 => "seven hundred",
  800 => "eight hundred",
  900 => "nine hundred",
  1000 => "one thousand"
}

def make_number_word(n)
  if @data[n] != nil
    word = @data[n]
  elsif n < 100
    word = @data[n.div(10) * 10] + " " + make_number_word(n.modulo(10))
  else
    word = @data[n.div(100) * 100] + " and " + make_number_word(n.modulo(100))
  end
  return  word
end

count = 0
for n in 1..1000
  word = make_number_word(n)
  print word + ", "
  count += word.gsub(" ", "").length
end
print "\n"

puts "answer = " + count.to_s