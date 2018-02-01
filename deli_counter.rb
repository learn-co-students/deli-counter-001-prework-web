# Write your code here.
#katz_deli = []

def original_line(deli)
  if deli.empty?
    puts "The line is currently empty."
  else
    deli_line = "The line is currently:"
    deli.each_with_index do |customer, index|
      deli_line << " #{(index+1)}. #{customer}"
    end
    puts deli_line
  end
end

#def line(deli)
#  if deli.empty?
#    puts "The line is currently empty."
#  else
#    puts "The line is currently: "
#  end
#end

def original_take_a_number(deli, customer)
  if deli.empty? && customer.empty?
    puts "There is nobody waiting to be served!"
  else
    deli.push(customer)
    puts "Welcome, #{customer}. You are number #{(deli.index(customer)+1)} in line."
  end
end

#describe "#take_a_number" do
#  context "there is nobody in line" do
#    it "should add a person to the line" do
#      expect($stdout).to receive(:puts).with("Welcome, Ada. You are number 1 in line.")
#      take_a_number(katz_deli, "Ada")
#      expect(katz_deli).to eq(["Ada"])
#    end

def original_now_serving(deli)
  if deli.empty?
    puts "There is nobody waiting to be served!"
  else
    customer = deli.shift
    puts "Currently serving #{customer}."
  end
end



def line(deli)
  deli_line = "The line is currently:"
  if deli.empty?
    puts "The line is currently empty."
  else
    deli.each_with_index do |customer, index|
      deli_line << " #{index+1}. #{customer}"
      # or
      #deli_line += " #{index + 1}. #{customer}"
      # or
      #deli_line = deli.map.with_index(1) do |e, i|
        #"#{i}. #{e}"
      #end
      #deli_line.join(' ')
      #puts "The line is currently: #{line}"
    end
    puts deli_line
  end
end

def take_a_number(deli, customer)
  if deli.empty? && customer.empty?
    puts "There is nobody waiting to be served!"
  else
    deli.push(customer)
    puts "Welcome, #{customer}. You are number #{deli.index(customer)+1} in line."
  end
end

def now_serving(deli)
  if deli.empty?
    puts "There is nobody waiting to be served!"
  else
    customer = deli.shift
    puts "Currently serving #{customer}."
    # or
    #puts "Currently serving #{deli[0]}."
		#deli.shift
    # or
    #puts "Currently serving #{deli.first}."
    #deli.shift
    # or
    #puts "Currently serving #{deli.shift}."
  end
end
