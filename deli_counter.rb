
def line(deli_line)
  people = ""
  if deli_line.empty?
    puts "The line is currently empty."
  else
    deli_line.each_with_index do |name, index|
      people << " #{index +1}. #{name}"
    end
    puts "The line is currently:#{people}"
  end
end


def take_a_number(katz_deli, name)
  katz_deli << "#{name}"
  puts "Welcome, #{name}. You are number #{katz_deli.count} in line."
end


def now_serving(deli_line)
  if deli_line.count < 1
    puts "There is nobody waiting to be served!"
    else
    puts "Currently serving #{deli_line.shift}."
  end
end


