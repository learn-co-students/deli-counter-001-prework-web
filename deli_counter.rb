katz_deli = [ ]

def line (katz_deli)
  if katz_deli.size > 0
    print "The line is currently:"
    katz_deli.each_index do |x|
    print " #{x+1}. #{katz_deli[x]}"
  end
  else
     puts "The line is currently empty."
  end
end

def take_a_number(katz_deli, name)
  katz_deli << name
  num = katz_deli.size
   puts "Welcome, #{name}. You are number #{num} in line."
end

def now_serving(katz_deli)
  if katz_deli.size > 0
    puts "Currently serving #{katz_deli.first}."
    katz_deli.shift
  else
    puts "There is nobody waiting to be served!"
  end
end