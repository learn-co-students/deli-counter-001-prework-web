katz_deli = []

def line(arr)
  if arr.any?
    count = 1
    box =""
    arr.each do |x|
       box << " #{count}. #{x}"
        count+=1
    end
    puts "The line is currently:" << box
  else
    puts "The line is currently empty."
  end
end

def take_a_number(arr, str)
  if arr.empty?
     arr.push(str)
     place = arr.length
     puts "Welcome, #{str}. You are number #{place} in line."
  elsif arr.any?
     arr << str
    puts "Welcome, #{str}. You are number #{arr.index(str)+ 1} in line."
  else
    print "#{str}  #{place}"
  end
end

def now_serving(line)
  if line.empty?
    puts "There is nobody waiting to be served!"
  else
    serving = line.shift
    puts "Currently serving #{serving}."
  end
end

