# Write your code here.
def line(array) # 'line' is a method that receive a varialbe 'array'
  if array.empty?
    puts "The line is currently empty."
  else
    ret = "The line is currently:"     # 'ret' is a variable created with string 'The line is currently'
    count = 0

    for name in array do  #'name'is a variable created
      count += 1 # increment
      ret << " #{count}. #{name}" # 'ret is return add'
    end

    puts ret # 'ret' is return complete The line is currently: 1. name, 2. name, 3. name
  end
end

def take_a_number(array, name)
  array.push(name)
  number = array.size
  puts "Welcome, #{name}. You are number #{number} in line."
end

def now_serving(array)
  if array.empty?
    puts "There is nobody waiting to be served!"
  else
    name = array.shift # tira a primeira pessoa da fila e retorna ela
    puts "Currently serving #{name}." # coloquei a pessoa na variable 'name' e coloquei numa strign
  end
end
