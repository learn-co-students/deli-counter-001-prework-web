# Write your code here.
def line(katz_deli)
  count = 1;
  line_str = "The line is currently: "
  if katz_deli.size == 0
    puts("The line is currently empty.")
  else
    katz_deli.each do |person|
      if(count == katz_deli.size)
        puts(line_str + "#{count}. #{person}")
      else
        line_str += ("#{count}. #{person} ")
      end
      count += 1
    end
  end
end

def take_a_number(katz_deli, new_name)
  katz_deli << new_name
  puts "Welcome, #{new_name}. You are number #{katz_deli.size} in line."
end

def now_serving(katz_deli)
  if katz_deli.size == 0
    puts("There is nobody waiting to be served!")
  else
    puts("Currently serving #{katz_deli.shift}.")
  end
end