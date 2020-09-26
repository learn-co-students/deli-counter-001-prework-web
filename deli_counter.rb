katz_deli=[]
def take_a_number(katz_deli, name)
  katz_deli << name
  number=katz_deli.index(name)+1
  puts "Welcome, #{name}. You are number #{number} in line."
end

def line(katz_deli)
  if katz_deli.length==0
    puts "The line is currently empty."
  else
  current_line= "The line is currently:"
   katz_deli.each do |x|
     number=katz_deli.index(x)+1
     current_line << " #{number}. #{x}"
   end
   puts current_line
  end
end

def now_serving(array)
  if array.length==0
    puts "There is nobody waiting to be served!"
  else
    name= array.shift
   puts "Currently serving #{name}."
 end
end
