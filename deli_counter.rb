# Write your code here.

def line(katz_deli)
  if katz_deli.size == 0
    puts "The line is currently empty."
  else
    list = []
    katz_deli.map.with_index { |x, i|
      list << "#{i+1}."
      list << x
    }

    puts "The line is currently: #{list.join(" ")}"
  end
end

def take_a_number(katz_deli, name)
  katz_deli << name

  katz_deli.map.with_index { |x, i|
      puts "Welcome, #{x}. You are number #{i+1} in line." if x == name
  }
end

def now_serving(katz_deli)
  if katz_deli.size == 0
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{katz_deli.delete_at(0)}."
  end
end
