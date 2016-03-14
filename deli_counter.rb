# Write your code here.

katz_deli = []

def line(katz_deli)
  default_line_message = "The line is currently"
  line_message = ""
  
  if katz_deli.size > 0
    katz_deli.each_with_index {|customer, index|
      line_message += "#{index+1}. #{customer} "
    }
    line_message = line_message.chop
    puts "#{default_line_message}: #{line_message}"
  else
    puts "The line is currently empty."
  end
end

def take_a_number(katz_deli, name)
  katz_deli << name

  name_index = katz_deli.length

  puts "Welcome, #{name}. You are number #{name_index} in line."
end

def now_serving(katz_deli)

  if katz_deli.size > 0
    currently_serving = katz_deli.first
    puts "Currently serving #{currently_serving}."
    katz_deli.delete_at(0)
  else
    puts "There is nobody waiting to be served!"
  end
end