katz_deli = []

def line (katz_deli)
  if katz_deli.empty?
    puts "The line is currently empty."
  elsif katz_deli.any?
    line_status = "The line is currently:"
    katz_deli.each_with_index do | name, index |
      line_status << " #{index + 1}. #{name}"
    end
    puts line_status
  end
end

def take_a_number (katz_deli, name)
    katz_deli.push(name)
    puts "Welcome, #{name}. You are number #{katz_deli.size} in line."
end

def now_serving (katz_deli)
  if katz_deli.empty?
    puts "There is nobody waiting to be served!"
  elsif katz_deli.any?
    puts "Currently serving #{katz_deli[0]}."
    katz_deli.shift
  end
end