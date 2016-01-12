# Write your code here.
def line(katz_deli)

  if katz_deli == []
    puts "The line is currently empty."
  else
    phrase = "The line is currently:"
    katz_deli.each_with_index do |name, index|
    phrase <<  " #{index + 1}. #{name}"
    end
    puts phrase
  end
end

def take_a_number(katz_deli, name)
  katz_deli.push(name)
  puts "Welcome, #{name}. You are number #{katz_deli.index(name) + 1} in line."
end

def now_serving(katz_deli)
  if katz_deli.length == 0
      puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{katz_deli.shift}."
  end
end

