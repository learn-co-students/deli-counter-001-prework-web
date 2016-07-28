
def line(people)
    line = ""
  number = people.length
  if number == 0
    puts "The line is currently empty."
  else
    people.each_with_index {|name, index|
        line = line + (" #{(index + 1)}. #{name}")}
      puts "The line is currently:#{line}"
  end
end

def take_a_number(katz_deli, string)
  katz_deli.push(string)
  puts "Welcome, #{string}. You are number #{(katz_deli.index(string) + 1)} in line."
end

def now_serving(after)
  if after.count == 0
    puts "There is nobody waiting to be served!"
  else
    up = after.fetch(0)
    after.shift
    puts "Currently serving #{up}."
  end
end
