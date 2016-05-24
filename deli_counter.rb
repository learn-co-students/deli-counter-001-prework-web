=begin
def line(katz_deli)
  if katz_deli == []
    puts "The line is currently empty."
  else
    string = "The line is currently:"
    index = 0
    while index < katz_deli.length
      string << " #{index + 1}. #{katz_deli[index]}"
      index += 1
    end
    puts string
  end
end
=end


def line(katz_deli)
  if katz_deli == []
    puts "The line is currently empty."
  else
    new_array = []
    katz_deli.each_with_index do |person, index|
      new_array << "#{index + 1}. #{person}"
    end
    puts "The line is currently: " + new_array.join(" ")
  end
end

def take_a_number(katz_deli, customer)
  katz_deli << customer
  puts "Welcome, #{customer}. You are number #{katz_deli.index(customer) + 1} in line."
end

def now_serving(katz_deli)
  if katz_deli == []
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{katz_deli.first}."
    katz_deli.shift
  end
end
