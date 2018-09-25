def line(deli_array)
  if deli_array.length == 0
    puts "The line is currently empty."
  else
    line_output = []
    deli_array.each.with_index(1) do |name, index|
      line_output << "#{index}. #{name}"
    end
    output = line_output.join(" ")
    puts "The line is currently: #{output}"
  end
end

def take_a_number(deli_array, name)
  deli_array << name
  place_in_line = deli_array.index(name) + 1
  puts "Welcome, #{name}. You are number #{place_in_line} in line."
end

def now_serving(deli_array)
  if deli_array.length == 0
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{deli_array[0]}."
    deli_array.shift
  end
end
