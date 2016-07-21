def line(array)# Write your code here.
  if array.empty? == true
    puts "The line is currently empty."
  else
    phrase = "The line is currently:"
    output = ""
    array.each_with_index do |name, index|
    output = output + " #{index + 1}. #{name}"
    end
    puts phrase.concat(output)
  end
end

def take_a_number(array, name)
  if array.empty? == true
    array.unshift(name)
    puts "Welcome, #{name}. You are number #{array.length} in line."
  else
    array.push(name)
    puts "Welcome, #{name}. You are number #{array.length} in line."
  end
end

def now_serving(array)
  if array.length == 0
    puts "There is nobody waiting to be served!"
  else
    customer = array.shift
    puts "Currently serving #{customer}."
  end
end