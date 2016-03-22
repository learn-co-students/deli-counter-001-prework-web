# Write your code here.


def line(katz_deli)
  people = ""
  if katz_deli.empty?
    puts "The line is currently empty."
  else
    katz_deli.each_with_index do |name, i|
      people << " #{i+1}. #{name}"
    end
    puts "The line is currently:#{people}"
  end
end

def take_a_number(katz_deli, name)
  katz_deli << name
  puts "Welcome, #{name}. You are number #{katz_deli.count} in line."
end

def now_serving(katz_deli)
  if katz_deli.empty?
    puts "There is nobody waiting to be served!"
    else
    puts "Currently serving #{katz_deli.first}."
    katz_deli.shift
  end
end

    #I kept changing the spacing and getting different, slightly misaligned results. The above is what finally made it pass. I think it was the space between " and #, but I'm not sure.

# build a new method to be used for new customer


