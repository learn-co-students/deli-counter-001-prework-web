# Write your code here.
require 'pry'

def line(katz_deli)
    if katz_deli.count == 0
        puts "The line is currently empty."
    else
        katz_deli_line = "The line is currently:"
        katz_deli.each_with_index  do |name, number|
        number += 1
        katz_deli_line << " #{number}. #{name}"
        end
    puts katz_deli_line
    end
end

def take_a_number(katz_deli, name)
    number = katz_deli.count + 1
    katz_deli << name
    puts "Welcome, #{name}. You are number #{number} in line."
end

def now_serving(katz_deli)
    if katz_deli.count == 0
      puts "There is nobody waiting to be served!"
    else
      new_katz_deli_line= katz_deli.shift
      puts "Currently serving #{new_katz_deli_line}."
    end
end