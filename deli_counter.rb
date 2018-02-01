def line(katz_deli)
  counter = 1
  msg = []
  if katz_deli.length == 0
    puts "The line is currently empty."
  else
    katz_deli.each do|person|
      msg.push("#{counter.to_s}. #{person}")
      counter += 1
    end
  puts msg.unshift("The line is currently:").join(" ")
  end
end

def take_a_number(katz_deli, name)
  katz_deli.push(name)
  puts "Welcome, #{name}. You are number #{katz_deli.length} in line."
end

def now_serving(katz_deli)
  if katz_deli.length != 0
      puts "Currently serving #{katz_deli.shift}."
  elsif katz_deli.length == 0
    puts "There is nobody waiting to be served!"
  end
end
