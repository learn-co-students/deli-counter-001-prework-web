katz_deli = []
the_line_size = katz_deli.size
def line(katz_deli)
  if katz_deli.size == 0 
    puts "The line is currently empty."
  else
    katz_deli.map!.each_with_index do |name,index|
     "#{index+1}. #{name}"
    end
    puts "The line is currently: " + katz_deli.join(" ")
  end
end

def take_a_number (katz_deli, name)
  katz_deli.push(name)
  the_line_size = katz_deli.size
  new_customer = katz_deli.last 
  puts "Welcome, #{new_customer}. You are number #{the_line_size} in line."  
end

def now_serving(katz_deli)
  the_line_size = katz_deli.size
  first_in_line = katz_deli.first
  if the_line_size == 0 
    puts "There is nobody waiting to be served!"
  else 
    puts "Currently serving #{first_in_line}."
    katz_deli.shift
  end
end
