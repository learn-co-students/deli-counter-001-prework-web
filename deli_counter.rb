katz_deli = []

def take_a_number(katz_deli, name)
  katz_deli.push(name)
  (katz_deli.index(name) + 1)
  puts "Welcome, #{name}. You are number #{(katz_deli.index(name) + 1)} in line."
end

def line(katz_deli)
  if katz_deli.length == 0
      then puts "The line is currently empty."
  end

  katz_queue = []  

  katz_deli.each do |x|
    katz_queue << " #{(katz_deli.index(x)+1)}. #{x}"
  end

  if katz_deli.length != 0
    then puts "The line is currently:#{katz_queue.join("")}"
  end
end

def now_serving(katz_deli)
  if katz_deli.length == 0
    then puts "There is nobody waiting to be served!"
  end

  if katz_deli.length != 0
    
    then puts "Currently serving #{katz_deli[0]}."
    katz_deli.shift
    end


end