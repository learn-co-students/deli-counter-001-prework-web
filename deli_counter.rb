# Write your code here.

def line(array)
  count = 0
  string = "The line is currently: "
  if array.any? == false
    puts "The line is currently empty."
  elsif array.any? == true
    array.each do |x|
      count += 1
      string << "#{count}. #{x} "
    end
    puts string.rstrip
  end
end

def take_a_number(katz_deli, string)
  katz_deli << string
  puts "Welcome, #{string}. You are number #{katz_deli.index(string) + 1} in line."
end

def now_serving(katz_deli)
  cur_customer = ""
  if katz_deli.any? == false
    puts "There is nobody waiting to be served!"
  elsif katz_deli.any? == true
    cur_customer << katz_deli.shift
    puts "Currently serving #{cur_customer}."
  end
end