katz_deli = []

def line(katz_deli)
    if katz_deli.empty? == true
    puts "The line is currently empty."
    else
    first_line = "The line is currently:"
    katz_deli.each_with_index {|name, index| first_line << " #{index + 1}. #{name}" }
    puts first_line
  end
end

def take_a_number(katz_deli, name)
  katz_deli << name
  puts "Welcome, #{name}. You are number #{katz_deli.index(name) + 1} in line."
end

def now_serving(katz_deli)
  name = katz_deli.shift
  if katz_deli.empty? == true
    puts "There is nobody waiting to be served!"
  else
  puts "Currently serving #{name}."
  end
end


  # take_a_number(katz_deli, "Ada") #=> 1
  # take_a_number(katz_deli, "Grace") #=> 2
  # take_a_number(katz_deli, "Kent") #=> 3

  # line(katz_deli) #=> "The line is currently: 1. Ada 2. Grace 3. Kent"

  # now_serving(katz_deli) #=> "Currently serving Ada."

  # line(katz_deli) #=> "The line is currently: 1. Grace 2. Kent"

  # take_a_number(katz_deli, "Matz") #=> 3

  # line(katz_deli) #=> "The line is currently: 1. Grace 2. Kent 3. Matz"

  # now_serving(katz_deli) #=> "Currently serving Grace."

  # line(katz_deli) #=> "The line is currently: 1. Kent 2. Matz"
