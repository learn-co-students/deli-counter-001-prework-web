katz_deli = []
other_deli = ["Logan", "Ava", "Spencer"]

def line(deli)
  if deli.size == 0
    puts "The line is currently empty."
elsif deli.size > 0
  count = []
  deli.each_with_index do |name, index|
    count << "#{index+1}. #{name}"
end
puts "The line is currently: #{count.join(" ")}"
end
end

def take_a_number(deli, customer)
  deli << customer
  puts "Welcome, #{customer}. You are number #{deli.size} in line."
end

def now_serving(deli)
  if deli.size ==0
    puts "There is nobody waiting to be served!"
  elsif deli.size > 0
    puts "Currently serving #{deli[0]}."
      deli.delete_at(0)

    end
  end