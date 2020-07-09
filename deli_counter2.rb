require 'pry'

def the_line(line, number)
  until number == 100
    if line.length == 4
      line.delete_at(0)
      take_a_number(line, number)
    else
      take_a_number(line, number)
    end
  end
  the_line(line,1)
end

def take_a_number(line, number)
  puts "Take a number? (y/n/reset/exit)"
  answer = gets.chomp
  if answer == 'y'
    puts "Your number is #{number}."
    line << number
    number += 1
    the_line(line,number)
  elsif answer == 'n'
    puts "ok bye"
    binding.pry
  elsif answer == 'reset'
    runner
  elsif answer == 'exit'
    puts "Goodbye."
  else
    puts "Invalid response. Try again."
    take_a_number(line, number)
  end
end

def runner
  puts "welcome to the deli."
  line = []
  number = 1
  the_line(line, number)
end
