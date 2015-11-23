

katz_deli=[]

def take_a_number(array, string)
  array.push(string)
  position=array.size
  puts "Welcome, #{string}. You are number #{position} in line."
end

def now_serving(array)
  if array.size == 0
    puts "There is nobody waiting to be served!"
  else puts "Currently serving #{array.shift}."
  end
end

def line(array)
  if array.size == 0
    puts "The line is currently empty."
  else
    array_2 = array.map.each_with_index do |name, index|
      " #{index+1 }. " + name 
    end
    puts "The line is currently:#{array_2*""}"
  end
end



