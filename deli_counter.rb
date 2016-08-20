katz_deli = []

def take_a_number(katz_deli, name)
  katz_deli.length == 0 || katz_deli.length > 0
  katz_deli << name
  number = katz_deli.length
  puts "Welcome, #{name}. You are number #{number} in line."
  #adds name to #katz_deli. returns welcome message using length of #katz_deli.
end

def line(katz_deli)
  if katz_deli.length < 1
  puts  "The line is currently empty."
else
  new_array = katz_deli.each_with_index.map do |name, index|
  "#{index+1}. #{name}"
  end
  puts "The line is currently: " + new_array.join(" ")
end
#new array formatted to be #{index}. #{name}
#new array pulls the index and names
#puts "The line is currently + the new array of index and names.
#add in space between index and names
end

def now_serving(katz_deli)
  if katz_deli.length < 1
  puts  "There is nobody waiting to be served!"
else name = katz_deli.shift
  puts "Currently serving #{name}."
end
  #puts no one there message if #katz_deli is 0.
  #otherwise return first name from katz deli.
end
