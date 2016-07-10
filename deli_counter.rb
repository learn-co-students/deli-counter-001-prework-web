# Write your code here.
def line(deli)
  if deli.empty?
    puts "The line is currently empty."
  else
    currentLine = "The line is currently:"
    deli.each_with_index do |name, index|
      currentLine << " #{index+1}. #{name}"
    end
    puts currentLine
  end
end

def take_a_number(deli, name)
    deli << name
    puts "Welcome, #{name}. You are number #{deli.length} in line."
end

def now_serving(deli)
  if deli.empty?
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{deli[0]}."
    deli.shift
  end
end
