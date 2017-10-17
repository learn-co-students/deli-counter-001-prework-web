##deli_counter##

##line method: v1 (basic version)
=begin
def line(deli)
  if deli.length > 0
    deli_line = []
    deli.each_with_index do |name,index|
      place = "#{index + 1}." 
      deli_line.push(place,name)
    end
    puts "The line is currently: #{deli_line.join(" ")}"
  else
    puts "The line is currently empty."
  end
end
=end

##line method: alt version (just for fun)
def line(deli)
  deli_line = [" empty."]
  deli.each_with_index do |name,index|
    place = "#{index + 1}."
      if !deli_line.include?(":") && !deli.empty?
        deli_line.delete(" empty.")
        deli_line.push(":",place,name)
      elsif !deli.empty?
        deli_line.push(place,name)
      else end
  end
    puts "The line is currently#{deli_line.join(" ")}"
end

def take_a_number(deli,name)
  deli.push(name)
  place = deli.index(name) + 1
  puts "Welcome, #{name}. You are number #{place} in line."
end
    
def now_serving(deli)
  while deli.length > 0
    puts "Currently serving #{deli[0]}."
    deli.shift
  end
  puts "There is nobody waiting to be served!"
end

##runner##

def runner(deli,name)
  line(deli)
  take_a_number(deli,name)
  now_serving(deli)
end
