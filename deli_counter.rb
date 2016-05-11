katz_deli = []

def line(array)

  line  = []

  array.each_with_index do |name, idx|
    line <<  " #{idx + 1}. #{name}"
  end

  if array.count == 0
    puts "The line is currently empty."
  else
    puts line.inject("The line is currently:") {|base, word| base + word }
  end
end

def take_a_number(array, name)
  array << name
  puts "Welcome, #{name}. You are number #{array.count} in line."
end

def now_serving(array)
  if array.count == 0
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{array.shift}."
  end
end

