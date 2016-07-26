# Write your code here.

def line(katz_deli_line)
  if katz_deli_line == []
    puts "The line is currently empty."
  else
    spot_in_line = []
    katz_deli_line.each do |name|
      place = katz_deli_line.index(name) + 1
      spot_in_line << "#{place}. #{name}"
    end
    puts "The line is currently: #{spot_in_line.join(" ")}"
  end
end

def take_a_number(katz_deli, name)
  katz_deli << name
puts "Welcome, #{name}. You are number #{katz_deli.length} in line."
end

def now_serving(katz_deli)
  if katz_deli.length == 0
# katz_deli == []
    puts "There is nobody waiting to be served!"
  else
#    currently_serving = katz_deli.shift
    puts "Currently serving #{katz_deli.first}."
    katz_deli.shift
  end
end
