katz_deli = []

def line(katz_deli)
  places = "The line is currently"
  if katz_deli.size == 0
    places << " empty."
  else
    places << ":"
    katz_deli.each_with_index do |customer, spot|
      places << " #{spot+1}. #{customer}"
    end
  end
  puts places
  places
end

def take_a_number(katz_deli,name)
  katz_deli << name
  place = "Welcome, #{name}. You are number #{katz_deli.size} in line."
  puts place
end

def now_serving(katz_deli)
  if katz_deli.size == 0
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{katz_deli[0]}."
    katz_deli.shift
  end
end
