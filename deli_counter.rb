# Write your code here.
def line(stJonhs_deli)
  if stJonhs_deli.empty?
    puts "The line is currently empty."
  else 
    currentLine = "The line is currently:"
    stJonhs_deli.each_with_index.map do |customer, number|
    currentLine << " #{number+1}. #{customer}"
    end
    puts currentLine
  end
end

def take_a_number(stJonhs_deli, customer)
    stJonhs_deli << customer
    puts "Welcome, #{customer}. You are number #{stJonhs_deli.length} in line."
end

def now_serving(stJonhs_deli)
  if stJonhs_deli.empty?
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{stJonhs_deli.first}."
    stJonhs_deli.shift
  end
end
