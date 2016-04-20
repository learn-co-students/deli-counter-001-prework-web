# Write your code here.
require "pry" 

def line(katz_deli)
  empty_deli = "The line is currently empty."
  busy_deli = "The line is currently:"
  unless katz_deli.empty?
    katz_deli.each_with_index do |shopper, position|
    busy_deli << " #{position + 1}. #{shopper}"
    end
    puts busy_deli
  else
    puts empty_deli
  end
end


def take_a_number(katz_deli, shopper)
  katz_deli << shopper
  # position = katz_deli.index(shopper)+1 
  position = katz_deli.count
  puts "Welcome, #{shopper}. You are number #{position} in line."
end


def now_serving(katz_deli)
  if katz_deli.empty?
    puts "There is nobody waiting to be served!"
  else 
    puts "Currently serving #{katz_deli.shift}."
  end 
end


