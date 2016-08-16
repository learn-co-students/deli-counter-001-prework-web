#Bookmark: http://stackoverflow.com/questions/20040757/using-each-with-index-with-map
#Bookmark: http://www.tutorialspoint.com/ruby/ruby_arrays.htm
#array.map.with_index(1) creates a new array containing the values returned by the block.
#array.join('-') Converts the array to a string, joins them together, & returns a string with whatever separator you put in the scope("-")
#array.map: Creates a new array containing values returned by the block
def line(katz_deli)
  if katz_deli.empty? == true;
    puts "The line is currently empty."
  else
    other_deli = katz_deli.map.with_index(1) do |name, index|"#{index}. #{name}"
    end
    puts "The line is currently: "+other_deli.join(" ")
  end
end

##array.push appends(adds) an element to the end of the array
#Array Methods Cheat Sheet: https://www.shortcutfoo.com/app/dojos/ruby-arrays/cheatsheet
def take_a_number(katz_deli, name)
  katz_deli.push(name)
  placeInLine = katz_deli.index {|i| i == "#{name}"}+1
  puts "Welcome, #{name}. You are number #{placeInLine} in line."
end

#at(index) Returns the element at index.
#a.shift Removes the first element of array a and return it (shifting all other elements down by 1)
def now_serving(katz_deli)
  if katz_deli.empty? == true
    puts "There is nobody waiting to be served!"
  else
    current_customer = katz_deli.at(0)
    puts "Currently serving #{current_customer}."
    katz_deli.shift
  end
end
