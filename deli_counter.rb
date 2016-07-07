def line (katz_deli)
  if katz_deli.empty? 
    puts "The line is currently empty."
  else
    people = [] 
    katz_deli.each_with_index do |name, index|
      people << "#{index+1}. #{name}" 
    end      
     puts "The line is currently: #{people.join(' ')}"
  end  
end

def take_a_number (line, name)
  line << name
  puts "Welcome, #{name}. You are number #{line.size} in line."
end

def now_serving (line)
  if line.empty? 
    puts "There is nobody waiting to be served!" 
  else
  first_person_in_line =  line.shift 
  
  puts "Currently serving #{first_person_in_line}."  
  end
end