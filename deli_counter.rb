katz_deli = []

def line(katz_deli)
  long_line = "The line is currently:"
    katz_deli.each_with_index {|name, i| long_line += " #{i.to_i+1}. #{name}"}
  if katz_deli.length == 0
    puts "The line is currently empty."
    else
      puts "#{long_line}"
    end
end
# line(katz_deli)

def take_a_number(katz_deli, name)
    puts "Welcome, #{name}. You are number #{katz_deli.length + 1} in line."
    katz_deli << name
end
# take_a_number(katz_deli, "Ada")

def now_serving(katz_deli)
  if katz_deli.length == 0
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{katz_deli.shift}."
  end
end
