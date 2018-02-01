# Shows everyone their current place in the line. If there is nobody in line, it outputs "The line is currently empty.".
# Params:
# +deli+:: +Array+ the collection of current customers' names at the deli.
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

# Adds a person to the line at the deli, then returns the person's name along with their position in line.
# Params:
# +deli+:: +Array+ the collection of current customers' names at the del.
# +name+:: +String+ The name of the person to add to the deli line.
def take_a_number(deli, name)
    deli << name
    puts "Welcome, #{name}. You are number #{deli.length} in line."
end

# Output the next person in line and then removes them from the front. If there is nobody in line, it outputs "There is nobody waiting to be served!".
# Params:
# +deli+:: +Array+ the collection of current customers' names at the del.
def now_serving(deli)
  if deli.empty?
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{deli[0]}."
    deli.shift
  end
end
