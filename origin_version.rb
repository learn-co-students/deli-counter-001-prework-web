katz_deli = []

def line(katz_deli)
  if katz_deli.empty?
    puts "The line is currently empty."
  else
    indexed_line = []
    katz_deli.each_with_index do |name, index|
      indexed_name = "#{index+1}. #{name}"
      indexed_line.push indexed_name
    end
    puts "The line is currently: #{indexed_line.join(" ")}"
  end
end

def take_a_number(katz_deli, name)
  katz_deli.push name
  puts "Welcome, #{name}. You are number #{katz_deli.length} in line."
end

def now_serving(katz_deli)
  if katz_deli.empty?
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{katz_deli[0]}."
    katz_deli.shift
  end
end
