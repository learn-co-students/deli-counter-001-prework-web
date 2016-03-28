# Write your code here.
katz_deli = []
def line(deli)
display = "The line is currently:"
  if  deli.empty? != true
      deli_hash = {}
      deli.each_with_index do |name, position|
      deli_hash[name] = position
      display << " #{position + 1}. #{name}"
      end
    puts display
    else
    puts "The line is currently empty."
  end
end

def take_a_number(array, name)
    puts "Welcome, #{name}. You are number 1 in line."  if array.empty? == true
    puts "Welcome, #{name}. You are number #{array.length + 1} in line." if array.length > 0
    array << name
end

def now_serving(array)
  puts "There is nobody waiting to be served!" if array == []
  puts "Currently serving #{array.shift}." if array.length > 0
end