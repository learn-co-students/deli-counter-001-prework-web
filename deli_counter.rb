katz_deli = []

def line(deli)
  if deli.empty?
    puts "The line is currently empty."
  else
    announcement = "The line is currently:"
    deli.each_with_index do |person, index|
      announcement << " #{index + 1}. #{person}"
    end
    puts announcement
  end
end

def take_a_number(deli, person)
  deli << person
  puts "Welcome, #{person}. You are number #{deli.length} in line."
end

def now_serving(deli)
  if deli.empty?
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{deli.shift}."
  end
end