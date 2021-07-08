def line(cur_line)
  if cur_line.size == 0
    puts "The line is currently empty."
  else
    line_phrase = "The line is currently:"
    cur_line.each_with_index do |name, index|
      line_phrase += " #{index+1}. #{name}"
    end
    puts line_phrase
  end
end

def take_a_number(cur_line, name)
  cur_line.push(name)
  puts "Welcome, #{name}. You are number #{cur_line.size} in line."
end

def now_serving(cur_line)
  if cur_line.size == 0
    puts "There is nobody waiting to be served!"
  else
    name = cur_line.shift
    puts "Currently serving #{name}."
  end
end