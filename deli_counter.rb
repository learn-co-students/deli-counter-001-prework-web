#katz_deli = []
def line(katz_deli)
  # if katz_deli.size == 0 || katz_deli == nil
  if katz_deli.empty?
    puts "The line is currently empty."
  else
    string = "The line is currently:"

      katz_deli.each_with_index do  |name,idx|
        number = idx + 1
        new_string = "#{number}. #{name}"
        string << " " + new_string

      end
      puts string
  end
end


#
def take_a_number(katz_deli, name)
    katz_deli << name

    number = katz_deli.size

    puts "Welcome, #{name}. You are number #{number} in line."

end


#
#
def now_serving(katz_deli)
  if katz_deli == nil || katz_deli.size == 0
    puts "There is nobody waiting to be served!"
  else
    element = katz_deli.shift
    # katz_deli
    puts "Currently serving #{element}."

  end

end
