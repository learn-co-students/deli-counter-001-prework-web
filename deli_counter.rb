# Write your code here.

        katz_deli = []
        other_deli = ["Logan", "Avi", "Spencer"]

def line(katz_deli)

    if katz_deli.size == 0
      puts "The line is currently empty."
  else
    #string to build upon for output
    line_message = "The line is currently: "
    #iterate over each item in the given array
    katz_deli.each_with_index do |name, index|
      #add place in line (index + 1) and name to line_message string
      line_message += "#{index + 1}. #{name} "
    end
    #output the built-up string
    puts line_message.strip
  end
end

  def take_a_number(katz_deli, name)

    number = katz_deli.length + 1
    puts "Welcome, #{name}. You are number #{number} in line."
    katz_deli.push(name)

  end

  def now_serving(katz_deli)

    if katz_deli[0] == nil

      puts "There is nobody waiting to be served!"

    else
    puts "Currently serving #{katz_deli[0]}."
    katz_deli.shift
end
  end