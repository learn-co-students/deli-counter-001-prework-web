# Write your code here.
def line(katz_deli)
  if katz_deli.empty?
    puts "The line is currently empty."
  else
    result = "The line is currently: "
    katz_deli.each_with_index { |person, i| result += "#{i+1}. #{person} " }
    puts result.strip
  end
end

def take_a_number(katz_deli, name)
  puts "Welcome, #{name}. You are number #{katz_deli.length + 1} in line."
  katz_deli << name
end

def now_serving(katz_deli)
  puts katz_deli.empty? ? "There is nobody waiting to be served!" : "Currently serving #{katz_deli[0]}."
  katz_deli.shift
end
