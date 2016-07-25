# Write your code here.
def line(deli)
if deli == [] 
  puts "The line is currently empty."
else 
  line = []
  deli.each_with_index do |name, index|
  index += 1 
    line.insert(0,"#{line[0]} #{index}. #{name}")
    end
    puts "The line is currently:#{line[0]}"
  end
end

  def take_a_number(deli, newcomer)
deli << newcomer
puts "Welcome, #{newcomer}. You are number #{deli.length} in line."
  end

  def now_serving(deli)
    if deli == []
      puts "There is nobody waiting to be served!"
    else puts "Currently serving #{deli[0]}."
      deli.shift
    end
end
