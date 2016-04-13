def line(array)
  if array.count == 0
    puts "The line is currently empty."
  else
    statement = "The line is currently:"
      array.each_with_index do |name, index|
        statement += " #{index+1}. #{name}"
      end
    puts statement
  end
end


def take_a_number(array, name)
  array.push(name)
  puts "Welcome, #{name}. You are number #{array.count} in line."
end


def now_serving(array)
  if array.length == 0
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{array.first}."
    array.shift
  end
  
end

katz_deli = []




