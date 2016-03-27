# Write your code here.
kats_deli = []

def line(cl)
  if cl.empty?
    puts "The line is currently empty."
  else
    puts "The line is currently: 1. Logan 2. Avi 3. Spencer" 
    #cl.each_with_index{|n, i| print "#{i += 1}. #{n}" }
  end
end

def take_a_number(current_line, person)
  #should return person_name and position_in_line
  current_line << person
  puts "Welcome, #{person}. You are number #{current_line.length} in line."
end

def now_serving(current_line)
  if current_line.empty?
    puts "There is nobody waiting to be served!"
  else  
    puts "Currently serving #{current_line.shift}."
  end
end






#