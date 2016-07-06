
def line (array)
  queue = ""
  if array.length == 0
    puts "The line is currently empty."
  else
    array.each_with_index do |name, index|
        queue << "#{index + 1}. #{name} "
    end
    puts "The line is currently: #{queue}".chop
  end
end

def take_a_number(array, name)
  array << name
  x = array.length
  puts "Welcome, #{name}. You are number #{x} in line."
end

def now_serving(array)
  if array.length == 0
    puts "There is nobody waiting to be served!"
  else
    customer = array.shift
    puts "Currently serving #{customer}."
  end
end

test_line = []
line(test_line)
take_a_number(test_line, "Drew")
now_serving(test_line)
line(test_line)
take_a_number(test_line, "Sam")
take_a_number(test_line, "Mipsy")
take_a_number(test_line, "Drew Again")
line(test_line)
