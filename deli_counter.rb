katz_deli = []

def line(katz_deli)
  if katz_deli == []
    puts "The line is currently empty."
  else
    #new_string = ""
    #i = 0
    #while i < katz_deli.length
    #  new_string += (i + 1).to_s + ". " + katz_deli[i] + " "
    #  i += 1
    #end
    #puts "The line is currently: " + new_string.slice(0..new_string.length - 2)

    extension_string = ""
    katz_deli.each_with_index do |customer, index|
      extension_string += "#{index + 1}. #{customer} "
    end
    puts "The line is currently: " + extension_string.slice(0..extension_string.length - 2)
  end
end

def take_a_number(katz_deli, customer_name)
  katz_deli << customer_name
  puts "Welcome, #{customer_name}. You are number #{katz_deli.length} in line."
end

def now_serving(katz_deli)
  if katz_deli == []
    puts "There is nobody waiting to be served!"
  else 
    puts "Currently serving #{katz_deli.shift}."
  end
end

