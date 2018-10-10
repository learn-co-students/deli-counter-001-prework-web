katz_deli =[]

def line(katz_deli)
  katz =[]
  if katz_deli == []
    puts "The line is currently empty."
  else
    katz_deli.each_with_index do |num, idx|
      katz.push("#{idx + 1}. #{num}")
    end
    puts "The line is currently: #{katz.join(" ")}"
  end
end

def take_a_number(katz_deli, name)
    katz_deli.push(name)
    puts "Welcome, #{name}. You are number #{katz_deli.index(name) + 1 } in line."
end

def now_serving(katz_deli)
  if katz_deli != []
    puts "Currently serving #{katz_deli[0]}."
  else
    puts "There is nobody waiting to be served!"
  end
  katz_deli.shift

end
