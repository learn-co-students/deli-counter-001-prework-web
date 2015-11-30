katz_deli = []

def take_a_number(katz_deli, name)
    katz_deli<<name
    katz_deli.to_enum.with_index(1).reverse_each do |name, index|
    puts "Welcome, #{name}. You are number #{index} in line."
    break
    end
end

def line(katz_deli)
  if katz_deli.empty?
    puts "The line is currently empty."
  else
    combo = katz_deli.collect.each.with_index(1) do |name, index|
        "#{index}. #{name}"
  end
  puts "The line is currently: #{combo.join(" ")}"
end
end

def now_serving(katz_deli)
  if katz_deli.empty?
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{katz_deli.shift}."
  end
end