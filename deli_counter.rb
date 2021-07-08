# Write your code here.
def line(katz_deli)
  return puts "The line is currently empty." if katz_deli.none?
   que = []
   num = 0
    katz_deli.each do |person|
      que.push("#{num += 1}. #{person}")
    end
  puts "The line is currently: " + que.join(" ")
end

def take_a_number(katz_deli, customer)
  if katz_deli.none?
    katz_deli.push(customer)
    puts "Welcome, #{katz_deli[0]}. You are number 1 in line."
  else
    katz_deli.push(customer)
    puts "Welcome, #{katz_deli.last}. You are number #{katz_deli.size} in line."
  end
end

def now_serving(katz_deli)
  return puts "There is nobody waiting to be served!" if katz_deli.none?
  puts "Currently serving #{katz_deli[0]}."
  katz_deli.shift
end