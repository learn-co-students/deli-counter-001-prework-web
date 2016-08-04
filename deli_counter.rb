
katz_deli=[]
def take_a_number(katz_deli, name)
  katz_deli << name
  number=katz_deli.find_index {|item| item==name}+1
  puts "Welcome, #{name}. You are number #{number} in line." #not sure about puts
end

def line(katz_deli)
  if katz_deli==[]
    puts "The line is currently empty."
  else
    new_katz_deli=[]
    katz_deli.each_with_index do |name, index|
      new_katz_deli<< "#{index+1}. #{name}"
    end
    string_katz_deli = new_katz_deli.join(" ")
    puts "The line is currently: #{string_katz_deli}" #right notation for katz's?
  end
end

def now_serving(katz_deli)
  if katz_deli==[]
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{katz_deli[0]}."
    katz_deli.shift
  end
end


line(katz_deli)
now_serving(katz_deli)
take_a_number(katz_deli, "Jill")
line(katz_deli)
take_a_number(katz_deli, "Mitra")
line(katz_deli)
now_serving(katz_deli)
