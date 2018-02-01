# Write your code here.
katz_deli = []

def take_a_number(katz_deli, name)
  katz_deli << name
  place = katz_deli.size
  puts "Welcome, #{name}. You are number #{place} in line."
end

def line(katz_deli)
  output = "The line is currently:"
   if katz_deli.empty?
    puts "The line is currently empty." 
  else
      katz_deli.each_with_index do |name, index|
        place = index + 1
        output << " #{place}. #{name}"
      end
      puts output
    end
  
end

def now_serving(katz_deli)
  if katz_deli.empty?
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{katz_deli.first}."
    katz_deli.shift
  end
end