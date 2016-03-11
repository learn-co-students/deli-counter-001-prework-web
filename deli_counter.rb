katz_deli = []



def line(deli)
  newArray = []

  if deli.size > 0
    for i in 0..deli.size - 1
      newArray.push("#{i+1}. #{deli[i]}")
    end
    puts "The line is currently: "+ newArray.join(" ")
  elsif deli.size == 0
    puts "The line is currently empty."
  end

end



def take_a_number(line, name)
  line.push(name)
  length = line.size
  puts "Welcome, #{name}. You are number #{length} in line."
end




def now_serving(deli)

  if deli.size > 0
    puts "Currently serving "+ deli[0]+"."
    deli.shift
  elsif deli.size == 0
    puts "There is nobody waiting to be served!"
  end

end