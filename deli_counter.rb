def line(katz_deli)
  line_up = "The line is currently"
  if katz_deli.empty? == true
    puts line_up.concat " empty."
  else
    line_up = line_up + ":"
    katz_deli.each_with_index do |name, index|
      line_up.concat(" #{index + 1}. #{name}")
    end
    puts line_up
  end
end

def take_a_number(katz_deli, string)
  katz_deli = katz_deli.push(string)
  last_person = katz_deli.last
  last_place = katz_deli.count
  puts "Welcome, #{last_person}. You are number #{last_place} in line."
end

def now_serving(katz_deli)
  if katz_deli.empty? == true
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving " + katz_deli[0] + "."
    katz_deli.shift
  end
end
