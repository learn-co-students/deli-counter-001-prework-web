katz_deli = []

def line(katz_deli)

  if katz_deli.empty? == true
    puts "The line is currently empty."
  else

array = []
katz_deli.each.with_index(1) do |name, index|

array << " #{index}. #{name}"

end
puts "The line is currently:#{array*""}"
end
end


def take_a_number(katz_deli, new)
  x = katz_deli.size + 1
#look into brining in the array size with x = katz_deli.size?
  katz_deli << new

  puts "Welcome, #{new}. You are number #{x} in line."

end

def now_serving(katz_deli)
    if katz_deli.empty? == true
    puts "There is nobody waiting to be served!"
  else
  front = katz_deli.shift
puts "Currently serving #{front}."
end
end



def nothing #test code for take a number
  katz_deli.each.with_index(1) do |name, index|
    puts "Welcome, #{name}. You are number #{index} in line."

  end

end

#http://stackoverflow.com/questions/3500814/ruby-array-to-string-conversion
#http://stackoverflow.com/questions/20258086/difference-between-each-with-index-and-each-with-index-in-ruby
#source for some of my thought process

