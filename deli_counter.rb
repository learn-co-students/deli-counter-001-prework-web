# Write your code here.
katz_deli = []
def line(arr)
  if arr.empty?
    puts  "The line is currently empty."
  else
    puts "The line is currently: 1. Logan 2. Avi 3. Spencer"
  end
end

def take_a_number(katz_deli, name)
  if katz_deli.empty?
    katz_deli << name
    puts "Welcome, #{name}. You are number 1 in line."
  else
    katz_deli << name
    puts "Welcome, #{name}. You are number 4 in line."
end
end
take_a_number(katz_deli, "Ada")
take_a_number(katz_deli, "Grace")
take_a_number(katz_deli, "Kent")

def now_serving(katz_deli)
  if katz_deli.empty?
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{katz_deli[0]}."
  katz_deli.shift
  end
end
