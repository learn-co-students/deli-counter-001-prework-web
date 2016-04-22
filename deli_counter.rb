# Write your code here.
katz_deli = []

def line(array)
  string = "The line is currently"
  if !array.empty?
    string += ":"
  array.each_with_index do |x,i|
    string += " "+(i+1).to_s + ". #{x}"
  end
  else 
    string += " empty."
  end

  puts string
end

def take_a_number(array, string)
  puts "Welcome, #{string}. You are number #{array.length+1} in line."
  array.push(string)
end

def now_serving(array)
  if array.empty?
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{array[0]}."
    array.shift
  end
end


