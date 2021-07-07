  def line(katz_deli)
    line = ""

    if katz_deli.empty?
     puts "The line is currently empty."
     return
    end

    katz_deli.each do |i|
      line << "#{katz_deli.index(i) + 1}. #{i} "
    end

      puts "The line is currently: #{line.strip}"
  end

  def take_a_number(katz_deli, name)
    
    katz_deli << name
    
    puts "Welcome, #{name}. You are number #{katz_deli.index(name) + 1} in line."
  end

  def now_serving(katz_deli)

    if katz_deli.empty?
      puts "There is nobody waiting to be served!"
    else
      puts "Currently serving #{katz_deli.shift}."
    end


  end


