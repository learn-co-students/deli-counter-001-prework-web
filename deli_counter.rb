def line(katz_deli)
  message = "The line is currently"

  if katz_deli.size == 0
    message.concat(" empty.")

    puts("#{message}")
  else
    message.concat(":")

    katz_deli.each_with_index do |name, index|
      message.concat(" #{index + 1}. #{name}")
    end

    puts("#{message}")
  end
end

def take_a_number(katz_deli, name)
  katz_deli.push(name)

  puts("Welcome, #{name}. You are number #{katz_deli.size} in line.")
end

def now_serving(katz_deli)
  next_in_line = katz_deli.shift

  if next_in_line == nil
    puts("There is nobody waiting to be served!")
  else
    puts("Currently serving #{next_in_line}.")
  end

end