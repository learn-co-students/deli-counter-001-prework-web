def line (array)
  if array.empty? == true
    puts "The line is currently empty."
  else
    # line_size=[]
    # line_size.concat((1..array.count).to_a)
    # line_message="The line is currently:"
    # line_size.each do |position|
    #   line_message<<" #{position}. #{array[position-1]}"
    # end

    line_message="The line is currently:"
    array.each do |name|
      line_message<<" #{array.index(name)+1}. #{name}"
    end
    puts line_message
  end
end

def take_a_number (array, name)
 puts "Welcome, #{name}. You are number #{array.count+1} in line."
 array<<name
end

def now_serving(array)
  if array.empty? === true
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{array[0]}."
    array.delete_at(0)
  end
end