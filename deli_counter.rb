katz_deli = []

def line(katz_deli)
  if katz_deli == []
    puts "The line is currently empty."
  else
    string = "The line is currently:"
    katz_deli.each_with_index {|item, index| string << " #{index + 1}. #{item}"}
    puts string
  end
end

def take_a_number(store, name)
  if store == []
    store << name
    store.each_with_index {|item, index| puts "Welcome, #{item}. You are number #{index + 1} in line."}
  else 
    store << name
    last = store.length
    puts "Welcome, #{name}. You are number #{last} in line."
  end
end

def now_serving(store)
  if store == []
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{store.shift}."
  end
end






