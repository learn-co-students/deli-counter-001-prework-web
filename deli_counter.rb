katz_deli = []

def line(array)
  if array == []
   answer = "The line is currently empty."
   puts answer
  else
    answer = "The line is currently:"
    array.each_with_index do |person, number| 
      answer << " #{number + 1}. #{person}"
    end
    puts answer
  end
end

def take_a_number(array, name)
    array << name 
    puts "Welcome, #{name}. You are number #{array.index(name) + 1} in line." 
end

def now_serving(array)
  if array == []
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{array.first}."
    array.shift
  end
end