# Write your code here.
def line(deli)
  if deli.size == 0
    puts "The line is currently empty."
  else
  	output = "The line is currently: "
  	deli.each.with_index do |person, index|
  	  output += "#{index + 1}. #{person}"
  	  output += ' ' if index + 1 != deli.size
  	end
  	puts output			
  end
end

def take_a_number(line, person)
  line << person
  num = line.size
  puts "Welcome, #{person}. You are number #{num} in line."
end

def now_serving(line) 
  if line.size == 0
    puts "There is nobody waiting to be served!"
  else 
    customer = line.shift
    puts "Currently serving #{customer}." 
  end
end