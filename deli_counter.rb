def line(katz_deli)
  if katz_deli.empty? == false
    line_list = []
    katz_deli.each do |name|
      line_number = katz_deli.index(name) + 1
      number_assign = "#{line_number}. #{name}"
      line_list << number_assign
    end
    string_list = line_list.join(" ")
    puts "The line is currently: #{string_list}"
  elsif katz_deli.empty? == true
    puts "The line is currently empty."
  end
end

def take_a_number(katz_deli, name)
  if katz_deli.empty? == true
    katz_deli << "#{name}"
    puts "Welcome, #{name}. You are number 1 in line."
  elsif katz_deli.empty? == false
    katz_deli << "#{name}"
    line_number = katz_deli.index(name) + 1
    puts "Welcome, #{name}. You are number #{line_number} in line."
    "#{line_number}"
  end
end

def now_serving(katz_deli)
  if katz_deli.empty?  == true
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{katz_deli[0]}."
    katz_deli.shift
  end
end