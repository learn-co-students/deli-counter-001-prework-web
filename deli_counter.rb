# Write your code here.
katz_deli = []

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