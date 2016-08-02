def line(arr)
  line = []
  if arr.size == 0
    puts "The line is currently empty."
  else
    arr.each.with_index do |n,i|
      line << "#{i+1}. #{n}"
    end
    puts "The line is currently: #{line.join(" ")}"
  end
end

def take_a_number(arr,name)
  arr << name
  puts "Welcome, #{name}. You are number #{arr.length} in line."
end

def now_serving(arr)
  puts arr.size == 0 ? "There is nobody waiting to be served!": "Currently serving #{arr.shift}."
end
