# Write your code here.
katz_deli = []

def line(katz_deli)
  line_number = katz_deli.count
    if line_number == 0
      puts "The line is currently empty."
    else
        list = "The line is currently:"
        katz_deli.each_with_index do |name, index|
        list += " #{index.to_i + 1}. #{name}"
      end
    puts "#{list}"

end

end

def take_a_number(katz_deli, name)
    katz_deli << name
    puts "Welcome, #{name}. You are number #{katz_deli.count} in line."
end

def now_serving(katz_deli)
  line_number = katz_deli.count
    if line_number == 0
      puts "There is nobody waiting to be served!"
    else
      puts "Currently serving #{katz_deli.first}."
      katz_deli.shift
    end
end
