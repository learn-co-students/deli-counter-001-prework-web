# Write your code here.

def line(array)
  if array.length == 0
    puts "The line is currently empty."
    return
  end

  string = "The line is currently: "
  array.each_with_index do |name, i|
    string += "#{i + 1}. #{name} "
  end
  puts string.strip
end

def take_a_number(array, name)
  array << name
  puts ("Welcome, #{name}. You are number #{array.length} in line.")
end

def now_serving(array)
  if array.length == 0
    puts "There is nobody waiting to be served!"
    return
  end

  first_person = array.shift
  puts "Currently serving #{first_person}."
end