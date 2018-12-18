def line(deli)
str = ""
i = 0
  if deli == []
    puts "The line is currently empty."
  else
    deli.each do |name|
      i += 1
      str += " #{i}. " + name
    end
    puts "The line is currently:#{str}"
  end
end

def take_a_number(deli, person)
  if deli == []
    deli << person
    puts "Welcome, #{person}. You are number 1 in line."
  else
    deli << person
  puts "Welcome, #{person}. You are number #{deli.length} in line."
  end
end

def now_serving(deli)
  if deli == []
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{deli[0]}."
    deli.shift
  end
end

def get_a_number(array)
  if array == [] && @counter.to_i == 0
    array << 1
  elsif @counter.to_i != 0
    array << @counter.to_i + 1
  else
    array << array.last + 1
  end
  array
  @counter = array.last
end

def serve_customer(array)
  array.shift
end
