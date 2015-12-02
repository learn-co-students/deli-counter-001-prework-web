def line(katz_deli)
  if katz_deli.empty?
      puts "The line is currently empty."
  else
      puts "The line is currently: 1. Logan 2. Avi 3. Spencer"
      #katz_deli.each_with_index{|x,i| puts " #{i+1}. #{x}"} 
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
# line(["dan","james","Kim"])
# line([])

