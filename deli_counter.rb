# Write your code here.
def line(katz_deli)
  count = 0
  string = "The line is currently: "
  if katz_deli.any? == false
    puts "The line is currently empty."
  else katz_deli.any? == true
    katz_deli.each do |x|
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
  else katz_deli.any? == true
    cur_customer << katz_deli.shift
    puts "Currently serving #{cur_customer}."
  end
end
