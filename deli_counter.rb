# Write your code here.
def line(argument)
   if argument.empty?
     puts "The line is currently empty."
   else
     deli = "The line is currently:"
     argument.each.with_index(1) do |man, num|
       deli << " #{num}. #{man}"
     end
     puts deli
   end
 end

def take_a_number(deli, person)
  deli << person
  puts "Welcome, #{person}. You are number #{deli.length} in line."
end

def now_serving(new_person)
  if new_person.empty?
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{new_person.first}."
    new_person.shift
  end
end
