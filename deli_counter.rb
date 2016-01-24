def line(array)
  #order = []
  #number = 1
  counter = 0
  if array == []
    puts "The line is currently empty."
  else
    #puts "The line is currently: #{array.count}. "
    last = ""
    full = ""
    until counter == array.count
      order = " #{counter + 1}. #{array[counter]}"
      full = last + order
      last = full
      counter += 1
    #array.collect do |patron|
      #order << "#{number}. #{patron}"
      #number += 1
    end
    #order.flatten
    puts "The line is currently:#{full}"
  end
end

def take_a_number(array, name)
  if array == []
    array.unshift(name)
    puts "Welcome, #{name}. You are number #{array.count} in line."
  else
    array.push(name)
    puts "Welcome, #{name}. You are number #{array.count} in line."
  end
end

def now_serving(array)
  if array == []
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{array[0]}."
    array.shift
  end
  #nobody = puts "There is nobody waiting to be served!"
  #people = puts "Currently serving #{array[0]}."
  #array == [] ? nobody : people
  #array.shift
end