katz_deli = []

def line(array, name = nil)
 if name == nil
 puts "The line is currently empty."
 else 
  array.each.with_index(1) do |name, index|
    puts "The line is currently: #{index}. #{name}"
    end 
end
end

def take_a_number(array, name)
array.each.with_index(1) do |name, index| 
  if array.length == 0
    array.push(name)
      puts "Welcome, #{name}. You are number #{index} in line."
  else
    array.length > 0
    array.push(name)
      puts "Welcome, #{name}. You are number #{index} in line."
  end 
end
end

take_a_number(katz_deli, "Ada")
