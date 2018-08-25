# Write your code here.
def line(line)
  line.empty? ? puts("The line is currently empty.") : print_line(line)
end

def print_line(line)
  line_text = "The line is currently:"
  line.each_with_index do |name, index|
    line_text << " #{index+1}. #{name}"
  end
  puts line_text
end

def take_a_number(line, name)
  line.push name
  puts "Welcome, #{name}. You are number #{line.size} in line."
end

def now_serving(line)
  line.empty? ? puts("There is nobody waiting to be served!") : puts("Currently serving #{line.shift}.")
end