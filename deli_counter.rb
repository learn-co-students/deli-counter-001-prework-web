# Write your code here.
def line(input)
  if input.size == 0
    puts "The line is currently empty."
  else
    message = "The line is currently:"
    count = 0
    input.each do |item|
      count += 1
      message.concat(" #{count}. #{item}")
    end
    puts message
  end
end

def take_a_number(line, name)
  line.push(name)
  if line.size == 1
    puts "Welcome, #{name}. You are number 1 in line."
  else
    puts "Welcome, #{name}. You are number #{line.size} in line."
  end
end

def now_serving(line)
  if line.size == 0
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{line.first}."
    line.shift
  end
end
