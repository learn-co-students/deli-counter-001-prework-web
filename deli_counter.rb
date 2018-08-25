def line(katz_deli)
  if katz_deli.empty?
      puts "The line is currently empty."
  else
      a = "The line is currently:"
      katz_deli.each_with_index do |element, i|
         a << " #{i+=1}. #{element}"
      end 
      puts a 
  end
end

def take_a_number(katz_deli, name)
  if katz_deli.empty?
      puts "Welcome, #{name}. You are number 1 in line."
      katz_deli << name
  else
      puts "Welcome, #{name}. You are number #{katz_deli.length+1} in line."
      katz_deli << name
  end
end

def now_serving(katz_deli)
  if katz_deli.empty?
      puts "There is nobody waiting to be served!"
  else  
      puts "Currently serving #{katz_deli.shift}."
  end    
end

# take_a_number(["dan","james","colin"],"Kim")
# line(["dan","james","kim"])
# line([])



# sentence = "This is my sentence:"
#     arr.each.with_index(1) do |element, i|
#       sentence << " #{i}. #{element}"
#     end


# def line(katz_deli)
#   if katz_deli.empty?
#       puts "The line is currently empty."
#   else
#       print "The line is currently:"
#       katz_deli.each_with_index{|x,i| print " #{i+1}. #{x}"} 
#   end
# end