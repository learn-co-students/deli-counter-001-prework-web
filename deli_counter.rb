katz_deli = []

def line(deli)
  if deli == []
    puts "The line is currently empty."
    else
    beginning_of_string = "The line is currently:"
    deli.each_with_index do |name,index|
    beginning_of_string <<" #{index + 1}. #{name}"
    end
    puts beginning_of_string
  end
end

def take_a_number(katz_deli, name)
    katz_deli.push("#{name}")
  line_number = katz_deli.index("#{name}")
  puts "Welcome, #{name}. You are number #{line_number + 1} in line."
end

def now_serving(katz_deli)
  if katz_deli == []
    puts "There is nobody waiting to be served!"
    else
    first_person = katz_deli.first
    puts "Currently serving #{first_person}."
    katz_deli.shift
  end
end
