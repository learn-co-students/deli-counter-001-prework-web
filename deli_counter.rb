def line(katz_deli)
  message = 'The line is currently'
  if katz_deli.size < 1
    message += ' empty.'
  else
    message += ': '
    katz_deli.each_with_index.collect do |customer,index |
      message += "#{index+1}. #{customer} "
    end
  end
  puts message.strip
end


def take_a_number(katz_deli, new_customer)
 katz_deli << new_customer
  puts "Welcome, #{new_customer}. You are number #{katz_deli.size} in line."
end

def now_serving(katz_deli)
  if katz_deli.size < 1
    puts 'There is nobody waiting to be served!'
  else
    puts "Currently serving #{katz_deli.shift}."
  end
end

