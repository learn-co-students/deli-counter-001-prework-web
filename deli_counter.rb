require 'pry'

def take_a_number(a, name)
 a << name
 puts "Welcome, #{name}. You are number #{a.length} in line."
 a
end

def now_serving(a)
  if a.empty?
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{a.first}."
    a.shift
  end
end

def line(a)
  str = "The line is currently"
  if a.empty?
    puts str << " empty."
  else
    binding.pry puts str << ':' << a.map.with_index { |name, index| " #{index + 1}. #{name}" }.join
  end
end