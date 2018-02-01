def line(katz_deli)
  if katz_deli.length == 0
    puts "The line is currently empty."
  else
    new_array = []
    katz_deli.each.with_index(1) do |a, index|
    new_array.push "#{index}. #{a}"
    end
    new_array.unshift "The line is currently:"
    new_array = new_array.join(" ")
    puts new_array
  end
end


def take_a_number(katz_deli, name)
  katz_deli.push(name)
  index = katz_deli.index(name)
  index = index + 1
  puts "Welcome, #{name}. You are number #{index} in line."
end

def now_serving(katz_deli)
  if katz_deli.length == 0
  puts "There is nobody waiting to be served!"
    else
  next_guest = katz_deli.first
  puts "Currently serving #{next_guest}."
  katz_deli.shift
  end
end

# Write your code here.