def line(arr)
  if arr.size == 0
    puts "The line is currently empty."
  else
    display =  "The line is currently:"
    arr.each_with_index do |name, index|
      index += 1
      display = display + " #{index}. #{name}"
    end
    puts display
  end
end


def take_a_number(arr, name)
  arr.push(name)
  number_in_line = arr.index(name) + 1
  puts "Welcome, #{name}. You are number #{number_in_line} in line."
  number_in_line
end

def now_serving(arr)
  if arr.size == 0
    puts "There is nobody waiting to be served!"
  else
    current = arr.shift()
    puts "Currently serving #{current}."
  end
end
