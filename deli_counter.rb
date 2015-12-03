def line(katz_deli = [])
  if katz_deli.empty?
     puts "The line is currently empty."
  else
    return katz_deli
  end
end

def take_a_number(katz_deli = [], name)

    katz_deli.push(name)

end

def now_serving
  katz_deli.shift
end