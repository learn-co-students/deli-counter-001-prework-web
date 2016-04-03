# Write your code here.

def line(deli)
  #If array size is empty, display that there is no one in line
  if deli.size == 0
    puts "The line is currently empty."
  else #display the number of people in the line, and puts the array
    message = "The line is currently:"
    deli.each_with_index do |person, index|
      place = index + 1
      message = message + " #{place}. #{person}"
    end 
    puts message
  end


end


def take_a_number(deli, name)
#If there is no one in line, add a person to line
#If there is someone in line, add person to end of line

deli.push(name)
position = deli.size

puts "Welcome, #{name}. You are number #{position} in line."

return deli

end

def now_serving(deli)
  if deli.size == 0
    puts "There is nobody waiting to be served!"
    return deli
  else
    customer = deli[0]
    puts "Currently serving #{customer}."
    deli.shift()
    return deli
  end
end