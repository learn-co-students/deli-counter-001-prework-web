# Write your code here.
katz_deli = []

def line(array)
  people = "The line is currently:" #This was the hardest part (other than figuring out spaces)
  if array.length == 0
    puts "The line is currently empty."
  else
    array.each do |name|
      people += " #{array.index(name) + 1}. #{name}" #I also should practice more with .index() to get used to it. I kept trying to do Python index, which took me a long time to figure out
    end
    puts people
  end
end

def take_a_number(array, name)
  array << name
  puts "Welcome, #{name}. You are number #{array.length} in line." # .length isn't like .index, so I don't have to add one
end

def now_serving(array)
  if array.length == 0
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{array.first}."
  end
    array.delete(array.first) 
end

=begin
def now_serving(array)
  head = array.first
  array.delete(head) 
  if array.length == 0
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{head}."
  end
end
=end
=begin
def line(array)
  people = []
  if array.length == 0
    puts "The line is currently empty."
  else
    wait = "The line is currently: "
    array.each do |name|
      people << "#{array.index(name) + 1}. #{name}"
    end
    puts wait + people.join(' ')
  end
end

def take_a_number(array, name)
  array << name
  puts "Welcome, #{name}. You are number #{array.length} in line."
end

def now_serving(array)
  head = array.first
  array.delete(head)
  if array.length == 0
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{head}."
  end
end
=end