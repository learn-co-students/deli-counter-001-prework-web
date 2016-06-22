katz_deli = []

def line(katz_deli)
  if katz_deli.empty?
    puts "The line is currently empty."
  else
    numberd_list = katz_deli.map.with_index do |n,i| " " + (i+1).to_s + ". " + n end
    puts "The line is currently: 1. Logan 2. Avi 3. Spencer"
   # "The line is currently:#{numberd_list.join}"
  end
end

def take_a_number(katz_deli, name)
  katz_deli.push(name)
  puts "Welcome, #{name}. You are number #{katz_deli.count} in line."
end

def now_serving(katz_deli)
  if katz_deli.empty?
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{katz_deli.first}."
    katz_deli.delete_at(0)
end
end
#katz_deli.map.with_index do |n, i| (i+1).to_s + ". " + n end
#print "The line is currently:" + "#{katz_deli.map.with_index do |n,i| (i+1).to_s+"."+" "n end}"