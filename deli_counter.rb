# Write your code here.
def line (line)
  order=[]
  if line.size>0
    line.each_with_index{|costumer,place|
    order<< "#{place+1}. #{costumer}" }
    newLine=order.join(" ").to_s
    puts "The line is currently: #{newLine}"
  else
  puts "The line is currently empty."
  end
end

def take_a_number (line ,newCostumer)
 line.push(newCostumer)
 puts "Welcome, #{newCostumer}. You are number #{line.index(newCostumer)+1} in line."

end

def now_serving(line)
  if line.size <= 0
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{line[0]}."
     line.shift()
end
end
