def line(katz_deli)
  if katz_deli.size == 0
    puts "The line is currently empty."
    else
    #current_line = []
    names = ''
      #katz_deli.each do |value|
      #current_line.push(value)
      #end
      katz_deli.each_with_index do |value, index|
      names += " #{index+1}. #{value}"
      end
    puts "The line is currently:#{names}"
  end
end

def take_a_number(katz_deli, name)
    #katz_deli.size == 0
    katz_deli.push(name)
    index_plus_one = katz_deli.index(name) + 1
    puts "Welcome, #{name}. You are number #{index_plus_one} in line."
 # else
  #  katz_deli.push(name)
  #  index_plus_one = katz_deli.index(name) + 1
  #  puts "Welcome, #{name}. You are number #{index_plus_one} in line."
  #end
end

def now_serving(katz_deli)
  if katz_deli.size == 0
    puts "There is nobody waiting to be served!"
  else
    serving = katz_deli.shift
    puts "Currently serving #{serving}."
  end
end

 katz_deli = []

  take_a_number(katz_deli, "Ada") #=> 1
  take_a_number(katz_deli, "Grace") #=> 2
  take_a_number(katz_deli, "Kent") #=> 3

 line(katz_deli) #=> "The line is currently: 1. Ada 2. Grace 3. Kent"

  now_serving(katz_deli) #=> "Currently serving Ada."

  line(katz_deli) #=> "The line is currently: 1. Grace 2. Kent"

  take_a_number(katz_deli, "Matz") #=> 3

  line(katz_deli) #=> "The line is currently: 1. Grace 2. Kent 3. Matz"

  now_serving(katz_deli) #=> "Currently serving Grace."

  line(katz_deli) #=> "The line is currently: 1. Kent 2. Matz"
