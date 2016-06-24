#   line(katz_deli) #=> "The line is currently: 1. Ada 2. Grace 3. Kent"

def line(people)
  if people.empty?
    puts "The line is currently empty."
  else
    result = "The line is currently: "
    people.each_with_index { |person, i| result += "#{i+1}. #{person} " }
    puts result.strip!
  end
end

# take_a_number(katz_deli, "Grace") #=> Welcome, Grace. You are number 2 in line.

def take_a_number(people, name)
  puts "Welcome, #{name}. You are number #{people.length + 1} in line."
  people << name
end

def now_serving(people)
  puts people.length.zero? ? "There is nobody waiting to be served!" : "Currently serving #{people[0]}."
  people.shift
end

