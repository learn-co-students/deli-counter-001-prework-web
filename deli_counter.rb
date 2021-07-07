katz_deli = []


def line(katz_deli)
  list = katz_deli.map.with_index { |name, ind| ind +=1 
    "#{ind}. #{name}" } * " "
  if katz_deli.any? 
   puts "The line is currently: #{list}" 
 else 
   puts "The line is currently empty."
 end
end

def take_a_number(katz_deli, name)
  katz_deli << name if katz_deli.include?(name) == false
  position = katz_deli.index(name) + 1
  puts "Welcome, #{name}. You are number #{position} in line."
end

def now_serving(katz_deli)
  serving = katz_deli.shift 
  if serving.nil?
    puts "There is nobody waiting to be served!" 
  else
    puts "Currently serving #{serving}." 
 end
end



