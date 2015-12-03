# Write your code here.
# katz_deli=[]
# other_deli=["Loagn","Avi","Spencer"]

def line(katz_deli)
  if katz_deli.empty?
    puts "The line is currently empty."
  else
    s = "The line is currently:"
    katz_deli.each_with_index {|x,y| s = "#{s} #{y+1}. #{x}"}
    puts s
  end
end

def take_a_number(array, name)
  array.push(name)
  puts "Welcome, #{name}. You are number #{array.size} in line." 
  
end

def now_serving(katz_deli)
  if katz_deli.empty?
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{other_deli.first}."
    other_deli.shift
  end
  
end






