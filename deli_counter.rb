katz_deli = []

def line(katz_deli)
  if katz_deli.empty?
    puts "The line is currently empty."
  else
    status = Array.new
    katz_deli.each do |name|
      status << "#{katz_deli.index(name)+1}. #{name}"
    end
    puts "The line is currently: #{status}"
  end
end

def take_a_number(katz_deli, name)
  katz_deli << name
end