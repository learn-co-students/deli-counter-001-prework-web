# Write your code here.
kats_deli = []

def line(cl)
  str = "The line is currently"
  if cl.empty?
    str << " empty."
  else
    str << ":"
    cl.each_with_index{|n, i| str << " #{i += 1}. #{n}" }
  end
  puts str
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