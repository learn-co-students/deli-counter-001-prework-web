def line(katz_deli)

	if katz_deli == []
		puts "The line is currently empty."
	end

x = 0
  katz_deli.each { |name|
  	x += 1
  		if name
	    	puts "Hey #{name}, you are the #{x} person in line."
	    end
    }

end

line (["Diana", "Cathy", "Isabelle"])
# line([]) # what happens when no one is on the line.


################### SPACE BETWEEN DIFFERENT METHODS #####


def take_a_number(katz_deli, new_person)

	katz_deli << new_person

puts "Howdy #{new_person}, you're the #{katz_deli.length} person in line."

end

take_a_number(["Natasha", "Michael", "Breanna"], "Diana")

################### SPACE BETWEEN DIFFERENT METHODS #####

def now_serving(katz_deli)

		 if katz_deli == []
		 	puts "There is nobody waiting to be served!"
		else
			puts "Hey #{katz_deli[0]}, step up to the cashier!"
		end

katz_deli.reverse # makes the first person last
katz_deli.pop # pops/takes the first person off of the line
katz_deli.reverse # reverses the line back to normal

end

now_serving(["Diana", "Anthony", "Ian"])
# now_serving([]) # what happens if no one is on the line



