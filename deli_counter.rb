# Write your code here.
def line(katz_deli)
  list=["The line is currently:"]
  index=1
  if katz_deli.empty?
    puts "The line is currently empty."
  else
    katz_deli.each do |name|
      list << "#{index}. #{name}"
      index+=1
    end
    puts list.join(" ")
  end
end

def take_a_number(katz_deli, name)
    katz_deli << name
    index = katz_deli.index(name)+1
    puts "Welcome, #{name}. You are number #{index} in line."
end

def now_serving(katz_deli)
  if katz_deli.empty?
    puts "There is nobody waiting to be served!"
  else
    serving = katz_deli.shift
    puts "Currently serving #{serving}."
    katz_deli
  end
end
