katz_deli = []

def line(katz_deli)
  if katz_deli.count == 0
    puts "The line is currently empty."
  else
    line = []
    katz_deli.each do |name|
      place = katz_deli.find_index(name) + 1
      line.push("#{place}. #{name}")
    end
    new_line = line.join(" ")
    puts "The line is currently: #{new_line}"
  end
end

def take_a_number(katz_deli, name)
  if katz_deli.count == 0
    katz_deli << name
    puts "Welcome, #{name}. You are number 1 in line."
  else
    katz_deli.push(name)
    puts "Welcome, #{name}. You are number #{katz_deli.count} in line."
  end
end

def now_serving(katz_deli)
  if katz_deli.count != 0
    puts "Currently serving #{katz_deli[0]}."
    katz_deli.shift
  else
    puts "There is nobody waiting to be served!"
  end
end
