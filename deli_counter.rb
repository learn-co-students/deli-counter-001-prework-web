def line(katz_deli)
  list = "The line is currently"
  if katz_deli.empty? == true
    list << " empty."
  else
    list << ":"
    katz_deli.each_with_index do |name, index|
      list << " #{index + 1}. #{name}"
    end
  end
  puts list
end

def take_a_number(katz_deli, name)
  katz_deli << name
  puts "Welcome, #{name}. You are number #{katz_deli.count} in line."
end

def now_serving(katz_deli)
  next_name = katz_deli[0]

  if next_name == nil
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{next_name}."
  end
  katz_deli.shift
end
