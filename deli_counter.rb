katz_deli = []

def line(katz_deli)
  if katz_deli.count == 0
    puts "The line is currently empty."
  else
    def katz_list(katz_deli)
      katz_deli.each_with_index.map { |name,index|
        " #{index+1}. #{name}"}
#      katz_list.push +(katz_deli.index(i)+1).to_s+". #{i}"
      end
    puts "The line is currently:#{katz_list(katz_deli).join}"
  end
end

def take_a_number (katz_deli, name)
  katz_deli.push (name)
  puts "Welcome, #{name}. You are number "+(katz_deli.index(name)+1).to_s+" in line."
end

def now_serving(katz_deli)
  if katz_deli.count == 0
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving "+katz_deli.shift+"."
  end
end
