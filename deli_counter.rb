# Write your code here.
katz_deli = ["Tom", "Dick", "Harry"]
empty =[]

def line(array)
  if array.length == 0
    puts "The line is currently empty."
  else
    phrase = "The line is currently:"
    array.each do |name|
      phrase << " #{array.find_index(name) + 1}. #{name}"
    end
    puts phrase
  end
end

def take_a_number(array, name)
  array << name
  puts "Welcome, #{name}. You are number #{array.find_index(name) + 1} in line."
end

def now_serving(array)
  if array.length == 0
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{array[0]}."
    array.shift
  end
end