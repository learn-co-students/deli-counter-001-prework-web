def line(line)
  que = "The line is currently:"
  if line.size == 0
    que = que.chomp(que[que.size-1]) #to remove ':' from que
    que += " empty."
  else
    for i in 0...line.size
      que += " #{i+1}. #{line[i]}"
    end
  end
  puts que
end


def take_a_number(line, name)
  if line.size == 0
    line.push(name)
    puts "Welcome, #{name}. You are number #{line.size} in line."
  else
    line.push(name)
    puts "Welcome, #{name}. You are number #{line.size} in line."
  end
end


def now_serving(line)
  if line.size == 0
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{line.shift}." #to remove and print name at once
  end
end