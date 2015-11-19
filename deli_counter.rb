def take_a_number(katz_deli, name)
  katz_deli.push(name)
  number = katz_deli.count
end


def now_serving(katz_deli)
  if katz_deli == []
    puts "There is nobody waiting to be served!"
  else 
    puts "Currently serving #{katz_deli[0]}."
    katz_deli.shift
  end
end

def line(katz_deli)
  if katz_deli == []
    puts "The line is currently empty."
  
  else 
    print "The line is currently: "
    katz_deli.each_with_index do |name, i|
      print "#{i + 1}. #{name} "
    end
  end
end

