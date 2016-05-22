def line(array)
  if array.size == 0
    puts "The line is currently empty."
  else
    result = "The line is currently:"
    array.each.with_index(1) do | stuff, number |
      result += " #{number}. #{stuff}"
    end
    puts "#{result}"
  end
end

def take_a_number(array, value)
  if array.size != 0
    array << value
    puts "Welcome, #{value}. You are number #{array.size} in line."
  else
    array << value
    puts "Welcome, #{value}. You are number #{array.size} in line."
  end
end

def now_serving(array)
  if array.size != 0
    puts "Currently serving #{array.shift}."
  else
    puts "There is nobody waiting to be served!"
  end
end
