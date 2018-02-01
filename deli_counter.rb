
def take_a_number(line,person)
    line << person
    puts "Welcome, #{person}. You are number #{line.length} in line."
end


def now_serving(array)
  if array == []
    puts "There is nobody waiting to be served!"
  else
    current = array.shift
    puts "Currently serving #{current}."
  end
end

def line(array)
  if array == []
    puts "The line is currently empty."
  else
    queue = ""
    array.each_with_index {|name,spot|  queue << " #{spot + 1}. #{name}"}
    puts "The line is currently:#{queue}"
  end
end