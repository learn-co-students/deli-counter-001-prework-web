katz_deli = []
def line(other_deli = katz_deli)
  if other_deli.length == 0
    puts "The line is currently empty."
  else
      people = []
other_deli.each_with_index do |x, index| people << " #{index + 1}. " "#{x}" end
puts "The line is currently:" + people.join
end
end


def take_a_number(other_deli = katz_deli, name)
  if other_deli.length == 0
    other_deli << name
    puts "Welcome, #{name}. You are number 1 in line."
  else
    other_deli << name
    puts "Welcome, #{name}. You are number #{other_deli.length} in line."

end
end

def now_serving(other_deli = katz_deli)
  if other_deli.length == 0
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{other_deli[0]}."
    other_deli.shift
  end
end

