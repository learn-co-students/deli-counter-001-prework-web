katz_deli = []

def line(katz_deli)
 if katz_deli.empty?
   puts "The line is currently empty."
 else
    announcement = "The line is currently:"
   other_deli.each_with_index do |value, index|
    announcement += " #{index+1}. #{value}"
   end
   puts announcement
 end
end

def take_a_number(katz_deli, name)
  if katz_deli.empty?
    puts "Welcome, #{name}. You are number #{katz_deli.size + 1} in line."
    katz_deli << name
  else
   puts "Welcome, #{name}. You are number #{katz_deli.size + 1} in line."
   katz_deli << name
  end
end

def now_serving(katz_deli)
  if katz_deli.empty?
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{katz_deli.first}."
   katz_deli.shift
  end
end