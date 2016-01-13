katz_deli = []

def take_a_number(katz_deli, name)
  if katz_deli.empty? == true 
    katz_deli.push(name)
    katz_deli.each_with_index do |name, index| puts "Welcome, #{name}. You are number #{index + 1} in line." 
    end
  else katz_deli.push(name)
    position = katz_deli.length
    puts "Welcome, #{name}. You are number #{position} in line."

  end
end

def line(katz_deli)
  if katz_deli.empty? == true 
    puts "The line is currently empty."
  else 
#    position = katz_deli.length
#    puts "Welcome, #{name}. You are number #{position} in line."
     phrase = "The line is currently:"
     i = 0
     while i < katz_deli.length
     
#     katz_deli.each do |name|
    phrase << " #{i + 1}. #{katz_deli[i]}"
    i += 1
     end 
     puts phrase
  end
end

def now_serving(other_deli)
  if other_deli.empty? == true 
    puts "There is nobody waiting to be served!"
  else 
#    phrase2 = "Currently serving "
    puts "Currently serving #{other_deli[0]}."
  end
   other_deli.shift
end

