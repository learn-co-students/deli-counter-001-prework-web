# Write your code here.
def line(katz_deli)
  if katz_deli.size == 0
    puts "The line is currently empty."
  else
    current = "The line is currently:"
    katz_deli.each_with_index {|name, index| current << " #{index+1}. #{name}"}
    puts current
  end
end

def take_a_number(katz_deli, string)
    katz_deli << string
    index = katz_deli.size
    puts "Welcome, #{string}. You are number #{index} in line."
end

def now_serving(katz_deli)
  if katz_deli.size == 0
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{katz_deli[0]}."
    katz_deli.shift
  end
end
