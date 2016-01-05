def take_a_number(deli_array, name)
	deli_array << name
  puts "Welcome, #{name}. You are number #{deli_array.size} in line."
end

def shuffle(deli_array)
  deli_array.each_with_index do |deli, idx|
    print " #{idx+1}. #{deli}"
  end
end




def line(deli_array)
  if deli_array.size > 0
    print "The line is currently:"
    shuffle(deli_array)
    puts
  else
    puts "The line is currently empty."
end

def now_serving(deli_array)
	if deli_array.size > 0
	 puts "Currently serving #{deli_array.shift}."
	else
     puts "There is nobody waiting to be served!"
  end
end
end

  katz_deli = []

  take_a_number(katz_deli, "Ada") #=> 1
  take_a_number(katz_deli, "Grace") #=> 2
  take_a_number(katz_deli, "Kent") #=> 3

  line(katz_deli)

  now_serving(katz_deli) #=> "Currently serving Ada."

  line(katz_deli) #=> "The line is currently: 1. Grace 2. Kent"

  take_a_number(katz_deli, "Matz") #=> 3

  line(katz_deli) #=> "The line is currently: 1. Grace 2. Kent 3. Matz"

  now_serving(katz_deli) #=> "Currently serving Grace."

  line(katz_deli) #=> "The line is currently: 1. Kent 2. Matz"

