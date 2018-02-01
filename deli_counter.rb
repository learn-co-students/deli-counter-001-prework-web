katz_deli = []

def line(deliArray)

  positionName = "The line is currently:" 
  # Alternate with array: see below
  # However, the fact that you can manipulate strings like arrays => mind blown
      
  if deliArray.size == 0
    puts "The line is currently empty."
  else
    deliArray.each do |name|
      index = 1 + deliArray.index(name)
      positionName << " #{index}. #{name}" # add position and name to line
    end
    puts positionName
  end

end

=begin

--> despite this being the first attempt at #line, it didn't pass because the test was expecting puts, not print

def line(deliArray)

  positionName = []
      
  if deliArray.size == 0
    puts "The line is currently empty."

  else
    deliArray.each do |name|
      index = 1 + deliArray.index(name)
      positionName << "#{index}. #{name}"
    end

    print "The line is currently: "
    positionName.each do |spot|
      print "#{spot} "

    end
  end

end
=end

def take_a_number(deliArray, name)
  deliArray << name # politely shove that person into line
  index = 1 + deliArray.index(name) # keeping to human counting standards
  puts "Welcome, #{name}. You are number #{index} in line."
end

def now_serving(deliArray)
  if deliArray.size == 0
    puts "There is nobody waiting to be served!"
  else
    served = deliArray.shift # returns and removes the first person from the line
    puts "Currently serving #{served}." # with the array solution, I'd put a \n at the beginning
  end
end
