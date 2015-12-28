def line(katz_deli)
  if katz_deli.empty?
    puts "The line is currently empty."
  else
    # string = "The line is currently:"
    # katz_deli.each_with_index { |e,i| string = string + " #{i+1}. #{e}"}
    # puts string
    s1 = ""
    s2 = "The line is currently:"
    katz_deli.each_with_index { |e,i| s1 << " #{i+1}. #{e}"}
    puts s2 + s1
  end
end

def take_a_number(array, name)
  array.push(name)
  puts "Welcome, #{name}. You are number #{array.size} in line." 
end

def now_serving(katz_deli)
  if katz_deli.empty?
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{katz_deli.first}."
    katz_deli.shift
  end
end