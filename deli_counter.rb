# Write your code here.
@counter = 1

def get_a_number(array)
  array.push(@counter)
  @counter += 1
  return @counter
end

def serve_customer(array)
  customer = array.shift
  return customer
end



def line(array)
  if array.size == 0
    puts "The line is currently empty."
  else
    string = "The line is currently:"
    array.each do |name|
      index = array.index(name) + 1
      string.concat(" #{index}. #{name}")
    end
    puts string
  end
end

def take_a_number(array, name)
  array.push(name)
  puts "Welcome, #{name}. You are number #{array.size} in line."
  return array
end

def now_serving(array)
  if array.size == 0
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{array.first}."
    array.shift
    return array
  end
end