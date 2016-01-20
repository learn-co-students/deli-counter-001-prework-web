def line(katz_deli)
  if katz_deli.length == 0
    puts "The line is currently empty."
  else
    print "The line is currently: "
    katz_deli.each_with_index do |name, index|
      print "#{index+1}. #{name}  "
    end
    puts
  end
end

def take_a_number(katz_deli, new_custmr)
  katz_deli << new_custmr
  current_line = katz_deli.length
  puts "Welcome, #{new_custmr}. You are number #{current_line} in line."
end

def now_serving(katz_deli)
  if katz_deli.length == 0
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{katz_deli[0]}."
    katz_deli.shift
  end
  katz_deli
end





  
  
