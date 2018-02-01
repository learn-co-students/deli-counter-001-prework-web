 def line(current_line)

  if current_line.length==0 then 
    puts("The line is currently empty.")
    return
  else
    line="The line is currently:" 
    current_line.each_with_index do |person, idx|
    line<< " #{(idx+1).to_s}. #{person}"
    end
  end
  puts(line)

 end


def take_a_number(current_line, name)
  current_line<<name
  puts "Welcome, #{name}. You are number #{(current_line.length).to_s} in line."
end

def now_serving(current_line)
  if current_line.length==0
    puts("There is nobody waiting to be served!")
  else puts("Currently serving #{current_line.shift}.")
  end
end

# Write your code here.