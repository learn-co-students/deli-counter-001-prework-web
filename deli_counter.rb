katz_deli = []

def take_a_number(list, name)
  list << name
  puts "Welcome, #{name}. You are number #{list.length} in line."
end

def now_serving(list)
  if list.length == 0
    puts "There is nobody waiting to be served!"
  else 
    puts "Currently serving #{list.first}."
    list.shift
  end
end

def line(list)
  if list.length == 0
    puts "The line is currently empty."
  else
    str = ["The line is currently:"]
    list.each_with_index do |x,num|
      str << "#{num+1}. #{x}"
    end
    puts str.join(' ')
  end
end