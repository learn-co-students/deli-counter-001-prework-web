
def line(katz_deli)
  #Check the line. If it's true that the line is empty then say the line is empty.
  if katz_deli.empty? == true;
    puts "The line is currently empty."
#I found the light here: http://stackoverflow.com/questions/20040757/using-each-with-index-with-map
#Also, look here: #http://www.tutorialspoint.com/ruby/ruby_arrays.htm
#If the line is not empty, array.map.with_index(1) creates a new array containing the values returned by the block.
#Which is what I need to happen here. It should puts it like this "1. John"
#I thought I would never figure this one out and that it would kill me.
  else
    other_deli = katz_deli.map.with_index(1) do |name, index|"#{index}. #{name}"
    end
#Google Search: How to convert an array to string ruby
#Remember that an array is a list of values, whereas a string is any quoted character (or group of characters).
#The to_s method will convert an array to a string by combining all of the values:
#a = [1, 2, 3, 4]
#a.to_s # Returns "1234"
#The join method does the same thing, but it takes an optional glue argument—
#a character (or character combination) to be placed between the array items within the string:
#a.join('-') # Returns "1-2-3-4"
    puts "The line is currently: "+other_deli.join(" ")
  end
end


def take_a_number(katz_deli, name)
  #add a name to the line with push method
  katz_deli.push(name)
  #Google now and forever will answer this question: "How to get the index of an array?"
  #Bookmark this fucking page: https://www.shortcutfoo.com/app/dojos/ruby-arrays/cheatsheet
  #index(obj) → int or nil
  #index { |item| block } → int or nil
  #index → Enumerator
  #Returns the index of the first object in ary such that the object is == to obj.
  #If a block is given instead of an argument, returns the index of the first object for which the block returns true.
  #Returns nil if no match is found.
  #see also rindex
  #An Enumerator is returned if neither a block nor argument is given.
  #Enumerator: A class which allows both internal and external iteration.
  line_index = katz_deli.index { |placement| placement == "#{name}"}+1 #this is the iteration. loop and add 1 each time.
  puts "Welcome, #{name}. You are number #{line_index} in line."
end

def now_serving(katz_deli)
  if katz_deli.empty? == true
    puts "There is nobody waiting to be served!"
#How do I get the name of the current customer? It's an element in the array that you need to access.
#The Method: at(index) → obj or nil
#Returns the element at index.
#A negative index counts from the end of self.
#Returns nil if the index is out of range. See also #[].
  else
    current_customer = katz_deli.at(0)
    puts "Currently serving #{current_customer}."
    katz_deli.shift
  end

end
