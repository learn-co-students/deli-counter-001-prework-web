# Write your code here.

def line(array)
  a = []
  s = "The line is currently:"
  if array.length == 0
    puts("The line is currently empty.")
  else
    array.each do |x|
      a << " #{array.index(x)+1}. #{x}"
    end
    a.each do |x|
      s << x
    end
    puts(s)
  end

end

def take_a_number(array, name)
  array << name
  puts("Welcome, #{name}. You are number #{array.index(name)+1} in line.")
  array
end

def now_serving(array)
  if array.length == 0
    puts("There is nobody waiting to be served!")
  else
    puts("Currently serving #{array.first}.")
    array.shift
  end
  array
end

test=["Logan", "Avi", "Spencer"]
test1=[]
now_serving(test)