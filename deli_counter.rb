# Write your code here.

def line(deli)
  if deli == []
    puts "The line is currently empty."
  else
    array = "The line is currently:"
    idx = 1
    deli.each do |name|
      array << " #{idx}. #{name}"
      idx += 1
    end
    puts array
  end
end

def take_a_number(deli, name)
  if deli == []
    puts "Welcome, #{name}. You are number 1 in line."
  else
    idx = deli.size + 1
    puts "Welcome, #{name}. You are number #{idx} in line."
  end
  deli << name
end

def now_serving(deli)
  if deli == []
    puts "There is nobody waiting to be served!"
  else
    name = deli.shift
    puts "Currently serving #{name}."
  end
end
