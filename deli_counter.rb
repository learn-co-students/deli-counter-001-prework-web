require 'pry'

def line(line)
  if line.empty?
    puts "The line is currently empty."
  else
    line_list = line.each_with_index.map { |name, i| "#{i + 1}. #{name}" }
    puts "The line is currently: #{line_list.join(' ')}"
  end
end

def take_a_number(line, name)
  line << name
  puts "Welcome, #{name}. You are number #{line.length} in line."
end

def now_serving(line)
  if line.empty?
    puts "There is nobody waiting to be served!"
  else
    customer = line.shift
    puts "Currently serving #{customer}."
  end
end
