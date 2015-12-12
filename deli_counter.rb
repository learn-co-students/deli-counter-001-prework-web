# Write your code here.
def line (cust_array)
   if cust_array.size == 0
      puts "The line is currently empty."
   else
      current_line = ""
      cust_array.each_index do |index|
         current_line += " #{index + 1}. #{cust_array[index]}"
      end
      puts "The line is currently:#{current_line}"
   end
end

def take_a_number (line, customer)
   line.push(customer)
   puts "Welcome, #{customer}. You are number #{line.index(customer) + 1} in line."
end

def now_serving (line)
   if line.size == 0
      puts "There is nobody waiting to be served!"
   else
      puts "Currently serving #{line[0]}."
      line.shift
   end
end