def line(deli)
  if deli == []
    puts "The line is currently empty."
  else
    line_list = []
    deli.each_with_index do |name, position|
      line_list.push("#{position + 1}. #{name}")
    end
    clean_list = line_list.join(" ")
    puts "The line is currently: #{clean_list}" 
  end
end

def take_a_number(deli,new_person)
  deli.push(new_person)
  puts "Welcome, #{new_person}. You are number #{deli.index(new_person) + 1} in line."
end

def now_serving(deli)
  if deli == []
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{deli[0]}."
    deli.shift
  end
end