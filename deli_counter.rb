# Write your code here.

def line(line)
  if line.empty? == true
    puts "The line is currently empty."
  else
    i=1
    message_ready_array=["The line is currently:"]
    line.each do |person|
      message_ready_array.push("#{i}. #{person}")
      i+=1
    end
    puts message_ready_array.join(" ")
  end
end

def take_a_number(line, name)
  if line.empty? == true
    line[0]= name
  else
    line.push(name)
  end
  num_in_line= line.size
  puts"Welcome, #{name}. You are number #{num_in_line} in line."
end

def now_serving(line)
  if line.empty? == true
    puts "There is nobody waiting to be served!"
  else
    up_next= line.shift
    puts "Currently serving #{up_next}."
  end
end

now_serving([])
now_serving(["Avi Tal", "Yehudi"])
