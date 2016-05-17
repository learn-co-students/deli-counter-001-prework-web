def line(people_in_deli)
  if people_in_deli.empty?
    puts "The line is currently empty."
  else
    current_queue = []
    people_in_deli.each.with_index(1) do |person, line_number|
      current_queue << "#{line_number}. #{person}"
      current_queue.flatten
    end
    final_queue = "The line is currently: #{current_queue.join(" ")}"
    puts final_queue
  end
end

def take_a_number(people_in_deli, person)
  people_in_deli.push(person)
  puts "Welcome, #{person}. You are number #{people_in_deli.size} in line."
end

def now_serving(people_in_deli)
  if people_in_deli.empty?
    puts "There is nobody waiting to be served!"
  else
    person = people_in_deli.shift
    puts "Currently serving #{person}."
  end
end
