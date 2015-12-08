def line(currentLine)
  out="The line is currently:"
  currentLine.each do |person|
    out.concat(" #{currentLine.find_index(person)+1}. #{person}")
    end
    out= "The line is currently empty." if currentLine.empty?
    puts out

 end

def take_a_number(currentLine, name)
  currentLine.push(name)
  position = currentLine.index(name)+1
  puts "Welcome, #{name}. You are number #{position} in line."

  return name, position
end


def now_serving (currentLine)

   puts "There is nobody waiting to be served!" if currentLine.empty? == true
   puts "Currently serving #{currentLine.first}." if currentLine.empty? == false

  currentLine.shift

end