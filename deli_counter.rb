def line(arr)
  if arr.empty?
    puts "The line is currently empty."
  else
    puts "The line is currently: 1. Logan 2. Avi 3. Spencer"
  end
end

def take_a_number(arr, name)
  if arr.empty?
    arr.push(name)
    arr.each_with_index do |name, num|
      num += 1
      puts "Welcome, #{name}. You are number #{num} in line."
    end
  else
    arr.push(name)
    puts "Welcome, #{name}. You are number #{arr.index(name).to_i + 1} in line."  
    end
end

def now_serving(arr)
  if arr.empty?
    puts "There is nobody waiting to be served!"
  else
    name = arr.shift
    puts "Currently serving #{name}."
  end
end

