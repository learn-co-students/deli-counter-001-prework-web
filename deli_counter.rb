katz_deli = []
other_deli = ["Logan", "Avi", "Spencer"]

def line(katz_deli)
  if katz_deli.empty? == true
    puts "The line is currently empty."
  else
    print "The line is currently:"
    katz_deli.each_with_index do |person, index|
      print " #{index+1}. #{person}"
    end
  end
end

def take_a_number(katz_deli, new_customer)
  katz_deli << new_customer
  puts "Welcome, #{new_customer}. You are number #{katz_deli.length} in line."
end

def now_serving(katz_deli)
  if katz_deli.empty? == true
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{katz_deli[0]}."
    katz_deli.shift
  end
end
