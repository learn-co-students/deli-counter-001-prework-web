def line(deli_line)
  if deli_line.size == 0
    puts "The line is currently empty."

  else
  	str = "The line is currently: "
   	n = 1

  	deli_line.each do |person|
  		str << "#{n}. #{person} "
  	n+=1
  end
  	puts str.chomp(" ")
end
end

def take_a_number(array, str)
	num = array.size + 1
	puts "Welcome, #{str}. You are number #{num} in line."
  return array.push(str)
end

def now_serving(line)
if line.size == 0
	puts "There is nobody waiting to be served!"
else
	puts "Currently serving #{line.shift}."

end
end
