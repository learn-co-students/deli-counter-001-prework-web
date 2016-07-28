def line(katz_deli)
  if katz_deli.length == 0
    puts "The line is currently empty."
  else
  	deli_line = ""
    katz_deli.each_with_index do |name, index|
      deli_line = deli_line + " #{index+1}. #{name}"
    end
    puts "The line is currently:#{deli_line}"
  end
end

def take_a_number(katz_deli, name)
  katz_deli.push(name)
  puts "Welcome, #{katz_deli[-1]}. You are number #{katz_deli.index(name)+1} in line."
end

def now_serving(katz_deli)
  if katz_deli.length == 0
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{katz_deli[0]}."
    katz_deli.shift
  end
end
