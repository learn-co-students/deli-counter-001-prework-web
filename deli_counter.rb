katz_deli = []

#method 1 
#def line(katz_deli)
#  if katz_deli.size != 0
#    print "The line is currently: "
     
#    katz_deli.each_with_index do |name, i|
#      print "#{i+1}. #{name} "
#    end
#  else
#    puts "The line is currently empty"
#  end
#end

#method 2
#def line(katz_deli)
#  if katz_deli.size != 0
#      print "The line is currently: "
#     katz_deli.each do |name|
#      print "#{katz_deli.index(name)+1}. #{name} "
#    end
#  else
#    puts "The line is currently empty."
#  end
#end
katz_deli = []

#method 3 
#def line(katz_deli)
#  if katz_deli.size == 0
#    puts "The line is currently empty."
#  else
#    in_line = []
#     katz_deli.each do |name|
#     in_line << (katz_deli.index(name)+1).to_s + "."
#     in_line << name  
#    end
#  puts "The line is currently: " + in_line.join(" ")   
#  end
#end       

#method 4
def line(katz_deli)
  if katz_deli.size == 0
    puts "The line is currently empty."
  else
     in_line = "The line is currently:"
     
     katz_deli.each do |name|
     in_line = in_line + " " + (katz_deli.index(name)+1).to_s + ". " + name   
    end
  puts in_line   
  end
end       



def take_a_number(katz_deli, name)
  
  katz_deli << name
  number = katz_deli.index(name) +1
  puts "Welcome, #{name}. You are number #{number} in line."
  
end

def now_serving(katz_deli) 
 if katz_deli.size != 0
  puts "Currently serving #{katz_deli[0]}."
  katz_deli.shift
 else
  puts "There is nobody waiting to be served!"
 end
end

