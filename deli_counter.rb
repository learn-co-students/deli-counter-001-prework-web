# Write your code here.
def line(deli_name)
  if deli_name.any?
    line = "The line is currently:"
    deli_name.each_with_index {|patron, index|
    line << " #{index + 1}. #{patron}" }
    puts line    
  else
    puts "The line is currently empty."
  end
end

def take_a_number(deli_name, patron_name)
  deli_name << patron_name
  patron_index = deli_name.index(patron_name)
  place = patron_index + 1
  puts "Welcome, #{patron_name}. You are number #{place} in line."
end

def now_serving(deli_name)
  if deli_name.empty?
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{deli_name[0]}."
    deli_name.shift
  end
end
