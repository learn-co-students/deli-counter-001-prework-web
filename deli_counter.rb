# Write your code here.
katz_deli = []

def line(line_array)
  if line_array.length > 0
    line = "The line is currently:"
    line_array.with_index do |name, index|
      line.concat(" #{index.to_i + 1}. #{name}")
    end
    puts line
  else
    puts "The line is currently empty."
  end
end

def take_a_number(line_array, name)
  line_array << name
  puts "Welcome, #{name}. You are number #{line_array.length} in line."

end

def now_serving(line_array)
  if line_array.length > 0
    puts "Currently serving #{line_array[0]}."
    line_array.shift
  else
    puts "There is nobody waiting to be served!"
  end
end