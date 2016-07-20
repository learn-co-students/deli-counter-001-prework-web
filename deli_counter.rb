katz_deli = []

def line(katz_deli)
  ppl_in_line = katz_deli.size

    if ppl_in_line > 0
      message = "The line is currently:"
      num = 1

      katz_deli.each do |name|
        message += " #{num}. #{name}"
        num += 1
      end

      puts "#{message}"
    else
      puts "The line is currently empty."
    end
end

def take_a_number(katz_deli, name)
  katz_deli << name
  ppl_in_line = katz_deli.size
  puts "Welcome, #{name}. You are number #{ppl_in_line} in line."
end

def now_serving(katz_deli)
  ppl_in_line = katz_deli.size
  current = katz_deli[0]

  if ppl_in_line > 0
    puts "Currently serving #{current}."
    katz_deli.shift
  else
    puts "There is nobody waiting to be served!"
  end
end
