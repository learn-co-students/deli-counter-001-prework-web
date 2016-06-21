# Write your code here.
katz_deli = []

def line(deli)
  if deli.empty?
    puts "The line is currently empty."
  else
    deli_line = "The line is currently:"
    deli.each_with_index do |customer, index|
      deli_line << " #{(index+1)}. #{customer}"
    end
    puts deli_line
    #puts "The line is currently: #{(deli[]+1)}. #{name}" ???
  end
end

#def line(deli)
#  if deli.empty?
#    puts "The line is currently empty."
#  else
#    puts "The line is currently: "
#  end
#end

def take_a_number(deli, customer)
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

def now_serving(deli)
  if deli.empty?
    puts "There is nobody waiting to be served!"
  else
    customer = deli.shift
    puts "Currently serving #{customer}."
  end
end
