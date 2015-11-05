# Write your code here.
def line(deli)
  if deli.length == 0
    puts "The line is currently empty."
  else
    list = ""
    deli.each.with_index(1) do |cust, i|
      list << " #{i}. #{cust}"
    end
    puts "The line is currently:#{list}"
  end
end

def take_a_number(deli, cust)
  deli << cust
  puts "Welcome, #{cust}. You are number #{deli.length} in line."
end

def now_serving(deli)
  if deli.length == 0
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{deli.shift}."
  end
end