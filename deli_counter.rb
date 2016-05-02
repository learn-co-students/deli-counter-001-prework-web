# Write your code here.
def line(deli)
  if deli.empty? #this conditional checks whether line is empty
    puts "The line is currently empty." #
  else
    current_line = "The line is currently:" 
    deli.each.with_index(1) do |person, i| # calls .each and .with_index with and argument methods on deli and iterate over each element
      current_line << " #{i}. #{person}" # wraps i and person variables for string interpolation and writes it in to current_line
  end
  puts current_line 
  end
  
end

def take_a_number(deli, name)
  number = deli.length + 1 # line starts from 1
  deli << name # shovels new name to the array
  puts "Welcome, #{name}. You are number #{number} in line." # welcomes the new customer and shows their number in the line
  
end

def now_serving(deli)
  if deli.length == 0 #checks if the line is empty
    puts "There is nobody waiting to be served!"
  else
    name = deli.shift #assign the first person to the name variable and removes them from the line
    puts "Currently serving #{name}." # wraps name variable for string interpolation to show the person being served
  end
end





# Write your code here.
=begin
def line(katz_deli)
  if katz_deli.empty?
    puts "The line is currently empty."
  else
    n = 1
    names = ""
    katz_deli.each do |x|
      names += " #{n}. #{x}"
      n += 1
    end
    puts "The line is currently:#{names}"
  end
  
end

def take_a_number(katz_deli, name)
  number = katz_deli.length + 1
  katz_deli << name
  puts "Welcome, #{name}. You are number #{number} in line."
  
end

def now_serving(katz_deli)
  if katz_deli.length == 0
    puts "There is nobody waiting to be served!"
  else
    name = katz_deli.shift
    puts "Currently serving #{name}."
  end
end
=end