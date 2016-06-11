# Write your code here.
def line(deli)
  if (deli.empty?)
    puts "The line is currently empty."
  else
    count = 0
    result = "The line is currently:"
    while count < deli.size do
      result = result.concat(" #{count + 1}. #{deli[count]}")
      count += 1
    end
    puts result
  end
end

def take_a_number(deli, name)
  if (deli.empty?)
    deli.push(name)
    puts "Welcome, #{name}. You are number 1 in line."
  else
    deli.push(name)
    puts "Welcome, #{name}. You are number #{deli.size} in line."
  end
end

def now_serving(deli)
  if (deli.empty?)
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{deli.shift}."
  end
end
