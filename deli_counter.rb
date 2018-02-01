# Write your code here.
katz_deli = []

def line(katz_deli)
  the_line = "The line is currently:"
  if katz_deli.size > 0
    katz_deli.each_with_index{|customer, index| the_line += " #{index+1}. #{customer}"}
    puts the_line
  else
    puts "The line is currently empty."
  end
end

def take_a_number(katz_deli, string)
  katz_deli << string
  puts "Welcome, #{string}. You are number #{katz_deli.index("#{string}")+1} in line."
end

def now_serving(katz_deli)
  noone = "There is nobody waiting to be served!"
  if katz_deli.size == 0
    puts noone
  else
    whoareweserving = "Currently serving #{katz_deli.first}."
    katz_deli.shift
    puts whoareweserving
  end
end
