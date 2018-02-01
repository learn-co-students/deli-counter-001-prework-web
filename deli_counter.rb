def line(people)
  _string=[]
  if people.size() == 0
    puts "The line is currently empty."
  else
    people.each_with_index{|person, index|_string.push( "#{index+1}. #{person}");}
    new_string=_string.join(" ")
    puts "The line is currently: "+ new_string
  end
end

def take_a_number(people,position)
  people.push(position)
  where_u_are=(people.index(position)+ 1)
  puts "Welcome, #{position}. You are number #{where_u_are} in line."
end

def now_serving(people)
  if people.size==0
    puts "There is nobody waiting to be served!"

  elsif people.size > 0
    removed= people.shift
    puts "Currently serving #{removed}."
  end
end

