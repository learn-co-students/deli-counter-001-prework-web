# Write your code here.
def line(katz_deli)
    katz_deli.map!.with_index {|name,index| (index + 1).to_s + ". "+ name + " " }
    if katz_deli.length > 0
        puts "The line is currently: " + katz_deli.join.rstrip
        else
        puts "The line is currently empty."
    end
end

def take_a_number(katz_deli,name)
  current_position = katz_deli.count + 1
  puts "Welcome, #{name}. You are number #{current_position} in line."
  katz_deli.push(name)
end

def now_serving(katz_deli)
  if katz_deli.count > 0
    puts "Currently serving #{katz_deli[0]}."
    katz_deli.shift
  else
    puts "There is nobody waiting to be served!"
  end
end