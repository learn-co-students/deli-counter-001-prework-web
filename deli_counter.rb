# Write your code here.
def line(katz_deli)
  if katz_deli.empty?
    puts "The line is currently empty."
  else
    string = "The line is currently:"
    katz_deli.each_with_index do |x,y|
      name = x
      position = y + 1
      cat = " #{position}. #{name}"
      string = string + cat
    end
    puts string
  end
end

def take_a_number(katz_deli, person)
  katz_deli.push(person)
  pos = katz_deli.index(person) + 1
  puts "Welcome, #{person}. You are number #{pos} in line."
end

def now_serving(katz_deli)
  if katz_deli.empty?
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving " + katz_deli.shift + "."
  end
end
