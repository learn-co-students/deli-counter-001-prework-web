require 'pry'
def line(deli)
  current_line =[]
  if deli == []
    puts "The line is currently empty."
  else

    deli.each_with_index do |name, index|
       current_line.push "#{index+1}. #{name}"
     end
     puts current_line.unshift("The line is currently:").join(" ")
  end
end


def take_a_number(deli, name)
  current_line = deli.insert(-1,name)
  new_line =[]
  current_line.each_with_index do |name, index|
    new_line<< [name, index+1]
  end
    puts "Welcome, "+ new_line[-1][-2].to_s + ". You are number " + new_line[-1][-1].to_s + " in line."
end



def now_serving(deli)
  if deli == []
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving " + deli[0].to_s + "."
    deli.shift
  end
end