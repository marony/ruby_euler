#!/usr/bin/env ruby

# 1900-01-01 => Monday(1)

LAST_DAY_OF_MONTH = [nil, 31, nil, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
DAY_OF_WEEK = [:sunday, :monday, :tuesday, :wednesday, :thursday, :friday, :saturday]

count = 0
day_of_week = 1 # Monday
for year in 1900..2000
  for month in 1..12
    puts "#{year}-#{month}-01 => #{DAY_OF_WEEK[day_of_week]}"
    count += 1 if day_of_week == 0 && year >= 1901
    last_day = LAST_DAY_OF_MONTH[month]
    if last_day == nil
      if year.modulo(100) == 0
        if year.modulo(400) != 0
          last_day = 28
        else
          last_day = 29
        end
      elsif year.modulo(4) == 0
        last_day = 29
      else
        last_day = 28
      end
    end
    day_of_week = (day_of_week + last_day).modulo(7)
  end
end
puts "answer = " + count.to_s
