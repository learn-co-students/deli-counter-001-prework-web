# Write your code here.
katz_deli = []

def line(line)
  if line.length > 0 
    lined=[]
    line.each_with_index do |item, index|
      lined << "#{index+1}. #{item}"
    end
    puts "The line is currently: #{lined.join" "}"
  else
  puts "The line is currently empty."
end
end

def take_a_number(array, string)
  array << string
  puts "Welcome, #{string}. You are number #{array.length} in line."
end

def now_serving(array)
  if array.length < 1 
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{array[0]}."
    array.shift(1)
  end
end