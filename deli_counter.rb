# Write your code here.
katz_deli = []

def line(katz_deli)
  line_out = []
  if katz_deli.size > 0
    katz_deli.each_with_index {|name, index|
      line_out.push("#{index+1}. #{name}")
    }
    line_out = line_out.join(" ")
    puts "The line is currently: #{line_out}"
  else puts "The line is currently empty."
    end
end



def take_a_number(katz_deli, name)
  katz_deli.push(name)
  # index = katz_deli.find_index(name)+1
  puts "Welcome, #{name}. You are number #{katz_deli.find_index(name)+1} in line."
  # puts "Welcome, #{name}. You are number #{index} in line."
end



def now_serving(katz_deli)
  if katz_deli.size > 0
  puts "Currently serving #{katz_deli.shift()}."
  else puts "There is nobody waiting to be served!"
  end
end
