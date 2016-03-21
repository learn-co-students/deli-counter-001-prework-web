katz_deli = []

def line(deli_line)
    if deli_line.empty?
      current_line ="The line is currently empty."
    else
      current_line = "The line is currently:"
      deli_line.each_with_index {|x, i| current_line += " #{i+1}. #{x}"}
    end
    puts current_line
end




def take_a_number(deli_line,name)
  deli_line.push(name)
  puts "Welcome, #{name}. You are number " + (deli_line.index(name) +1 ).to_s + " in line."
end




def now_serving(deli_line)
  if deli_line.empty?
    puts "There is nobody waiting to be served!"
  else
    current_patron = []
    current_patron << deli_line.shift
    current_patron.each {|x| puts "Currently serving #{x}."}
  end
  deli_line
end
