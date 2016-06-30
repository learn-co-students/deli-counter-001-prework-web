# Write your code here.
katz_deli = []

def line(deli)
if deli.size == 0
  puts "The line is currently empty."
else
  currently = "The line is currently:"
  deli.each_with_index do |item, index|
currently<<(" #{index + 1}. #{item}")
  end
  puts currently
end
end



def take_a_number(katz_deli, customer_name)

if katz_deli.size == 0
    katz_deli<<customer_name
  puts "Welcome, #{customer_name}. You are number #{katz_deli.size } in line."


else
  katz_deli<<customer_name
    puts  "Welcome, #{customer_name}. You are number #{katz_deli.index(customer_name) + 1} in line."
  end
end


def now_serving(katz_deli)
if katz_deli.size == 0
  puts "There is nobody waiting to be served!"
else

    first_in_line = katz_deli.shift
puts "Currently serving #{first_in_line}."


end

end
