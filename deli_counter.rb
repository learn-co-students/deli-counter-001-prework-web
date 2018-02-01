katz_deli = []

def line(line)
  if line.size == 0
    puts "The line is currently empty."
  else
    customers = ""
    line.each_with_index do |name, index|
      customers = customers + " " + (index+1).to_s + ". " + name
    end
    puts "The line is currently:#{customers}"
  end
end

def take_a_number(line, name)
  line << name
  puts "Welcome, #{name}. You are number #{line.index(name)+1} in line."
end

def now_serving(line)
  if line.size > 0
    puts "Currently serving #{line.first}."
    line.shift
  else
    puts "There is nobody waiting to be served!"
  end
end
