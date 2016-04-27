katz_deli = []

def line(katz_deli)
  if katz_deli.length == 0
    puts "The line is currently empty."
  else
    customers = "The line is currently:"
    katz_deli.each_with_index do |customer, index|  # enumerator method that keeps track of the index number of the current iteration. it takes 2 arguments.
      customers << " #{index + 1}. #{customer}" #string interpolation. It replaces placeholders within a string with values they represent.
    end
    puts customers
  end
end



def take_a_number(katz_deli, name)
  katz_deli << name
  puts "#{katz_deli.length}"
end


def now_serving(katz_deli)
  if katz_deli.length == 0
    puts "There is nobody waiting to be served!"
  else
    current_customer = katz_deli.shift
    puts "Currently serving #{current_customer}."
  end
end
