# Write your code here.

def line(katz_deli)
  if katz_deli.empty?
    puts "The line is currently empty."
  else
    line = []
    katz_deli.each_with_index { |name, i| line << (i + 1).to_s << ". " << name + " " }
    puts "The line is currently: #{line.join("").strip}"
  end
end

def take_a_number(katz_deli, name)
  puts "Welcome, #{name}. You are number #{katz_deli.length + 1} in line."
  katz_deli << name
end

def now_serving(katz_deli)
  if katz_deli.empty?
    puts "There is nobody waiting to be served!"
  else
    customer = katz_deli.shift
    puts "Currently serving #{customer}."
  end
end
