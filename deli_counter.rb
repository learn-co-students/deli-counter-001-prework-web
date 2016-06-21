# Write your code here.
def line(katz_deli)
  if katz_deli.size == 0
    puts "The line is currently empty."
  else
    current_line = "The line is currently:"
    katz_deli.each_with_index {|name, index| current_line << " #{index+1}. #{name}"}
    puts current_line
  end
end

def take_a_number(katz_deli, name)
    katz_deli << name
    welcome = []
    katz_deli.each_with_index do |name, index|
      welcome = "Welcome, #{name}. You are number #{index+1} in line."
    end
      puts welcome
end

def now_serving(katz_deli)
  if katz_deli.size == 0
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{katz_deli[0]}."
    katz_deli.shift
  end
end
