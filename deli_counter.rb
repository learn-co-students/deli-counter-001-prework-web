# Write your code here.
def line(katz_deli)
  if katz_deli.empty?
    puts "The line is currently empty."
  else
    current_name = "The line is currently:"
    katz_deli.each.with_index(1) do |person, i|
      current_name << " #{i}. #{person}"
    end
    puts current_name
  end
  
end

def take_a_number(katz_deli, name)
  number = katz_deli.length + 1
  katz_deli << name
  puts "Welcome, #{name}. You are number #{number} in line."
  
end

def now_serving(katz_deli)
  if katz_deli.length == 0
    puts "There is nobody waiting to be served!"
  else
    name = katz_deli.shift
    puts "Currently serving #{name}."
  end
end