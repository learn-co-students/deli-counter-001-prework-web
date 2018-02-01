forest_dairy = []

def line(forest_dairy)
  if forest_dairy.length == 0
    puts "The line is currently empty."
  else
    def current_line(forest_dairy)
      forest_dairy.each_with_index.map do |person, index|
        " #{index + 1}. #{person}"
      end
    end
    puts "The line is currently:#{current_line(forest_dairy).join}"
  end
end



def take_a_number(forest_dairy, new_person)
  forest_dairy.push(new_person)
  puts "Welcome, #{new_person}. You are number #{forest_dairy.length} in line."
end

def now_serving(forest_dairy)
  if forest_dairy == []
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{forest_dairy[0]}."
    forest_dairy.shift
  end
end