def line(array)
  if array.empty? == true
    puts "The line is currently empty."
  else
   x=1
  line=["The line is currently:"]
  until array.empty? == true
  line << " #{x}. #{array.shift}"
  x+=1
  end
  puts line.join()

  end
end

def take_a_number(array, element)
  array << element
  
  puts "Welcome, #{element}. You are number #{array.count} in line."

end

def now_serving(array)
  if array.empty? == true
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{array.first}."
    array.shift
  end
end

katz_deli=[]
other_deli=["Logan", "Avi", "Spencer"] 
line(katz_deli)
take_a_number(katz_deli, "Ada")
take_a_number(katz_deli, "Grace")
take_a_number(katz_deli, "Kent")
line(katz_deli)
line(other_deli)
# Write your code here.