def line (katz_deli)
  new_line = []
  if katz_deli.size == 0
    puts "The line is currently empty."
  else katz_deli.each_with_index do |name, i|
      new_line << "#{i+1}. #{name}"
        end
    puts "The line is currently: #{new_line.join(" ")}"
  end
end

def take_a_number (katz_deli, name)
  katz_deli << name
  puts "Welcome, #{name}. You are number #{katz_deli.length} in line."
end

def now_serving (katz_deli)
  puts katz_deli.size == 0? "There is nobody waiting to be served!" : "Currently serving #{katz_deli.shift}."
end
