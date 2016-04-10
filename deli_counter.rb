katz_deli = []

def line(current_line)
  if 
    current_line[0] == nil
    out_string = "The line is currently empty."
  else
    idx = 0
    out_string = "The line is currently:"
    while idx < current_line.length
      place = (idx + 1).to_s
      person = current_line[idx]
      out_string = out_string + " " + place + ". " + person 
      idx = idx + 1
      end
    end
puts out_string
end


def take_a_number(current_line, new_person)
  current_line.push(new_person)
  current_place = current_line.length
  place_string = current_place.to_s
  puts "Welcome, " + new_person + ". You are number " + place_string +  " in line."
end

def now_serving(current_line)
  if current_line[0] == nil 
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving " + current_line.shift + "."
  end
end

 
  take_a_number(katz_deli, "Ada") 
  take_a_number(katz_deli, "Grace")
  take_a_number(katz_deli, "Kent") 
 
  line(katz_deli) 
  now_serving(katz_deli)
  line(katz_deli) 
  take_a_number(katz_deli, "Matz") 
  line(katz_deli) 
  now_serving(katz_deli)
  line(katz_deli) 

