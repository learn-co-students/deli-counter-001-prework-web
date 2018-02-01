=begin
THIS WAS MY ORIGINAL STAB AT #LINE BUT IT CONTINUALLY FAILED RSPEC DESPITE MANUAL TESTS CONFIRMING IT WORKS.
DETERMINED THAT RSPEC ONLY CONTEMPLATED USING PUTS HERE WHERE I USED PRINT GIVEN THE REQUESTED OUTPUT.

def line(line_array)
  if line_array.empty?
    puts "The line is currently empty."
    else
      print "The line is currently:"
      line_array.each_with_index do |person, index|
        print " #{index + 1}. #{person}"
      end
  end
end
=end

def line(line_array)
  if line_array.empty?
    puts "The line is currently empty."
    else
    line_output = "The line is currently:"
    line_array.each_with_index do |person, index|
      line_output += (" #{index + 1}. #{person}")
    end
    puts line_output
  end
end

def take_a_number(line_array, person)
  line_array.push(person)
  puts "Welcome, #{person}. You are number #{line_array.index(person) + 1} in line."
end

def now_serving(line_array)
  if line_array.empty?
    puts "There is nobody waiting to be served!"
    else puts "Currently serving #{line_array.shift}."
  end
end