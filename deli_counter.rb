

def line(array)
  if array.length == 0
    puts "The line is currently empty."
    elsif array.length >= 1
      new_array = []
      array.each_with_index do |name , i|
      new_array << "#{i+1}. #{name}"
    end
    puts "The line is currently: #{new_array.join(" ")}"
  end
 end

def take_a_number(katz_deli, name)
  if katz_deli.length == 0
    katz_deli.unshift(name)
    puts "Welcome, #{name}. You are number 1 in line."
  elsif katz_deli.length >= 1
    katz_deli.push(name)
    puts "Welcome, #{name}. You are number #{katz_deli.length} in line."
  end
end

def now_serving(katz_deli)
  if katz_deli.length == 0
   puts "There is nobody waiting to be served!"
  elsif katz_deli.length >= 1
    puts "Currently serving #{katz_deli.shift}."
  end
end
