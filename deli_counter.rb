def line(abc)
  xyz=""
  if abc.size==0
    puts "The line is currently empty."
  else

    #"The line is currently: "
    abc.each do|i|
      xyz<<" #{abc.index(i)+1}. #{i}"
    end
    puts "The line is currently:#{xyz}"
  end
end
  # Write your code here.
def take_a_number(a,b)
  a.push(b)
  puts "Welcome, #{b}. You are number #{a.index(b)+1} in line."
end

def now_serving(abc)
  if abc.size==0
    puts "There is nobody waiting to be served!"
  else
    zz=abc.shift
    puts "Currently serving #{zz}."
  end

end