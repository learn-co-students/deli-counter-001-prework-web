def line(people)
if people.count > 0 
output = "The line is currently:"
people.each_with_index {|name, number|
number+=1
output.concat(" #{number}. #{name}")
}
puts output
else
puts "The line is currently empty." 
end
end



def take_a_number(line,name)
line.push(name)
puts "Welcome, #{name}. You are number #{line.count} in line."
end

def now_serving(people)
if people.count == 0
puts "There is nobody waiting to be served!"
else 
puts "Currently serving #{people.shift}."
end    
end