#Start off with an empty array.
katz_deli = []

def line (katz_deli)
  if katz_deli.size == 0
    puts "The line is currently empty."
  else
    current =  "The line is currently:"
    katz_deli.each_with_index do |name, index|
      current.concat " #{index+1}. #{name}"
    end
    puts current
  end
end
def get_customer
  @customer = @customer || 0
end

def get_a_number(queue)
  get_customer
  #@customer+=1
  queue.push(@customer+=1)

end

def take_a_number (katz_deli, name)
  katz_deli.push(name)
  puts "Welcome, #{name}. You are number #{katz_deli.size} in line."
end

def now_serving(katz_deli)
  if katz_deli.size == 0
    puts "There is nobody waiting to be served!"
  else
    next_person = katz_deli.shift
    puts "Currently serving #{next_person}."
  end
end