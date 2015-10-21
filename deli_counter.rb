def empty
  []
end

def pop
  ["Mauice", "Grendle", "Kimchi", "Tassadar"]
end


def line(deli_list)
  h_line = []
    if deli_list.size == 0
    puts "The line is currently empty."
    elsif deli_list.size > 0
    deli_list.each_with_index do |x , y|
    h_line << "#{y+1}. #{x}"
  end
  puts "The line is currently: #{h_line.join(" ")}"
  end
end

def take_a_number( array , name)
  array << name
  puts "Welcome, #{name}. You are number #{array.size} in line."
end

def now_serving(deli)
    if deli.length == 0
      puts "There is nobody waiting to be served!"
    else
      puts "Currently serving #{deli[0]}."
      deli.delete_at(0)
  end
end  


  


