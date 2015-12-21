# Write your code here.
def line(deli)
  if deli.size == 0
    puts "The line is currently empty."
  else 
    line_status = "The line is currently:"
    deli.each_with_index do |val, index| 
      line_status += " #{index + 1}. #{val}"
    end
    puts line_status
  end
end


def take_a_number(deli, name)
    deli.push(name)
    puts"Welcome, #{name}. You are number #{deli.index(name) + 1} in line."
end

def now_serving(deli)
  if deli.size == 0
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{deli.shift}."
  end
end