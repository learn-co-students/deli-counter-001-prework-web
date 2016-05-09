katz_deli = []
  
  def line(katz_deli)
  if katz_deli.size == 0
   puts "The line is currently empty."
   else
     line = []
     katz_deli.each.with_index do |x, i|
     line << "#{i + 1}. #{x}"
    end
     puts "The line is currently: #{line.join(" ")}"
  end
end

def take_a_number(katz_deli, name)
  katz_deli << name
  puts "Welcome, #{name}. You are number #{katz_deli.size } in line."
end
 
def now_serving(katz_deli)
  if katz_deli.size == 0
  puts "There is nobody waiting to be served!"
  else
   puts "Currently serving #{katz_deli.shift}."
  end
end