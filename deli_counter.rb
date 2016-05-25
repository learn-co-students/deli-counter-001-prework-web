# Write your code here.



def line(katz_deli)
  other_deli = []
   if katz_deli == []
    puts "The line is currently empty."
  else
    katz_deli.each_with_index do |n, index|
      other_deli.push("#{index+1}. #{n}")  
    end
  puts "The line is currently: #{other_deli.join(" " )}" 
  end
end
# placing and properly spacing an index number between elements of an array.
# .join method (google)

def take_a_number(katz_deli, name)
  katz_deli.push(name)    
  puts "Welcome, #{name}. You are number #{katz_deli.length} in line."
end

# push name to an array 
  # > add an index number to each element of the array
    # > put string using each element with index from the array
# I over complicated it with the loop... 

def now_serving(katz_deli)
  if katz_deli.empty?
    puts "There is nobody waiting to be served!"
  else
    katz_deli.each_with_index do |n, index|
      if index == 0
        puts "Currently serving #{n}."
        katz_deli.shift
      end
    end
  end
end
    