# Write your code here.
katz_deli = []

def line(katz_deli)
  if katz_deli.count == 0
    puts "The line is currently empty."
  else katz_deli.count != 0
      string = "The line is currently:"
      line_string = ""
      katz_deli.each_with_index { |e,i| line_string = line_string + " #{i+1}. " + "#{e}"}
      puts string + line_string
    end
  end

def take_a_number(katz_deli, name)
  katz_deli << name
  puts "Welcome, #{name}. You are number #{katz_deli.index(name)+1} in line."
end

def now_serving(katz_deli)
  if katz_deli.count == 0
    puts "There is nobody waiting to be served!"
  else katz_deli.count != 0
    puts "Currently serving #{katz_deli.first}."
    katz_deli.shift
  end
end
