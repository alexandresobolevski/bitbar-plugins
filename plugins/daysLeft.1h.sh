#!/usr/bin/ruby
require 'date'

birthday = '1992-03-26'
end_at_age = 70
now = Date.today

puts "Days left: " + (Date.new(*birthday.split('-').map(&:to_i)).next_year(end_at_age) - now).to_i.to_s
