katz_deli = []

       # array
def line(current_line)
  # if the array is empty
  if current_line.empty?
    puts "The line is currently empty."
  else
    # variable used to hold the final message
    queue = "The line is currently:"
    # iterate over the array and add the index + 1, along with the name
    # to the end of the queue variable
    current_line.each_with_index do |name, index|
    queue += " " + (index + 1).to_s + ". #{name}"
  end
  puts queue
  end
end

                # array         string
def take_a_number(current_line, person_joining)
  # append person_joining to current_line
  current_line << person_joining
  # holds the position in line for easier output
  position = current_line.index(person_joining) + 1
  puts "Welcome, #{person_joining}. You are number #{position} in line."
end

              # array
def now_serving(current_line)
  if current_line.empty?
		puts "There is nobody waiting to be served!"
	else
    # holds the first element from current_line and removes it from the array
		current_customer = current_line.shift
		puts "Currently serving #{current_customer}." # should I use .shift directly?
	end
end
