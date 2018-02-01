$temp = 0
# Write your code here.
def line(katz_deli)
  str_line = ""
  if(katz_deli.size == 0)
    str_line = "The line is currently empty."
  else
    str_line = "The line is currently:"
    katz_deli.each_with_index {|name, index| str_line << " #{index+1}. #{name}"}
  end
  puts str_line
end

def take_a_number(katz_deli, customer)
  katz_deli << customer
  puts "Welcome, #{customer}. You are number #{katz_deli.size} in line."
end

def now_serving(katz_deli)
  if(katz_deli.size == 0)
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{katz_deli.shift}."
  end
end

def get_a_number(line)
  if(line.size == 0 && $temp == 0) #first go through
    line << 1
  elsif($temp > 0) #not first go through and array size is 0
    line << $temp + 1
    $temp = 0
  else
    line << line.last + 1
    $temp = 0
  end
  line.last
end

def serve_customer(line)
  $temp = line.last if (line.size == 1) #store the value if its last
  line.shift
end