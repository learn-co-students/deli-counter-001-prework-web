

def line(deli)
  if deli.length == 0 
    puts "The line is currently empty."
  else
    string = "The line is currently:"
    deli.each_with_index do |name, index|
      string += " #{index +1}. #{name}"
    end
    puts string
  end
end





def take_a_number(deli, name)
  if deli.empty?
     deli.push(name)
     place = deli.length
     puts "Welcome, #{name}. You are number #{place} in line."
  elsif deli.any?
     deli << name
    puts "Welcome, #{name}. You are number #{deli.index(name)+ 1} in line."
  else
    print "#{name}  #{place}"
  end
end



def now_serving(deli)
  if deli.empty?
    puts "There is nobody waiting to be served!"
  else deli.any?    
puts "Currently serving #{deli [0]}."
deli.shift
   end 

 end 

