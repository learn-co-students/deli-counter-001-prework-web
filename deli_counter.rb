def line(katz_deli)
  if katz_deli.empty?
    puts "The line is currently empty."
  else
    names = []
    katz_deli.each_with_index do |name, index|
      names << "#{index + 1}. #{name}"
    end
    puts "The line is currently: " + names.join(" ")
  end 
end

def take_a_number(array, name)
  array.push(name)
  num = array.length
  puts "Welcome, #{name}. You are number #{num} in line."
end

def now_serving(array)
  if array.empty?
    puts "There is nobody waiting to be served!"
  else 
    name = array.shift
    puts "Currently serving #{name}."
  end
end
