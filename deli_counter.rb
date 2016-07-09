# Write your code here.
katz_deli = []

def line(arr)
  if arr.count == 0
    puts "The line is currently empty."
  else
    message = "The line is currently:"
    arr.each_with_index do | value, index |
      message += " #{index + 1}. #{value}"
    end
    puts message
  end
end

def take_a_number(arr, str)
  arr.push(str)
end
