katz_deli = []

def take_a_number(array, name)
  array << name
  puts "Welcome, #{name}. You are number #{array.index(name)+1} in line."
end

def now_serving(array)
  puts array == [] ?  "There is nobody waiting to be served!" : "Currently serving #{array[0]}."
  array.shift
end

def line(array)
  if array == [] 
    puts "The line is currently empty." 
  else 
    phrase = "The line is currently:"
    array.each_with_index do |name, index| 
      place = " #{index+1}. #{name}"
      phrase << place
    end
    puts phrase
  end
end