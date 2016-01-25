# Write your code here.
def line(katz_deli = [])
  itr = 0
  if katz_deli.length == 0
    puts "The line is currently empty." 
  else  
    outstr = "The line is currently:"
    while itr < katz_deli.length
      name = katz_deli[itr]
      posn = itr + 1
      outstr += " #{posn}. #{name}"
      itr += 1
    end

    puts outstr
  end
end

def take_a_number(katz_deli = [], newCustomer)
  queueNumber = katz_deli.size + 1
  katz_deli.push(newCustomer)
  puts "Welcome, #{newCustomer}. You are number #{queueNumber} in line."
  return katz_deli
end


def now_serving(katz_deli)
  if katz_deli.length == 0
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving " + katz_deli.shift + "."
  end

  return katz_deli
end