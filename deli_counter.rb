katz_deli = []

def line(katz_deli)
  name_cart = ""
  if katz_deli == []
    puts "The line is currently empty."
  else
    katz_deli.each_with_index do |name, idx|
      name_cart =  name_cart + " #{idx +1}. #{name}"
    end
    puts "The line is currently:#{name_cart}"
  end
end

def take_a_number(katz_deli, person)
  katz_deli << person
  puts "Welcome, #{person}. You are number #{katz_deli.count} in line."
end

def now_serving(katz_deli)
  if katz_deli.count == 0
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{katz_deli[0]}."
    katz_deli.shift
  end
end
