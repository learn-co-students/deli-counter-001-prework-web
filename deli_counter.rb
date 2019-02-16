def line(katz_deli)
  if katz_deli.length == 0
    puts "The line is currently empty."
   else
    arr=[]
    (katz_deli.each_with_index {|val, ind| (arr << "#{ind+1}. #{val}")})
    puts "The line is currently: " + arr.join(' ')
  end
end

def take_a_number(katz_deli, name)
    katz_deli << name
    puts "Welcome, #{name}. You are number #{katz_deli.index(name)+1} in line."
end

def now_serving(katz_deli)

  if katz_deli.length> 0
  puts "Currently serving #{katz_deli[0]}."
  katz_deli.shift
  elsif katz_deli.length == 0
  puts "There is nobody waiting to be served!"
  end
end


def get_a_number(queue)
  queue << (queue.length)+1
  queue[queue.length-1]
end



