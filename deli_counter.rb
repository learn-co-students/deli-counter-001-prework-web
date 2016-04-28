katz_deli = []

def take_a_number(katz_deli, new_cust)
  katz_deli.push(new_cust)
  puts "Welcome, #{new_cust}. You are number #{katz_deli.length} in line."
end

# take_a_number(katz_deli, "bill")
# take_a_number(katz_deli, "will")

def line(katz_deli)
  if katz_deli.count == 0
    puts "The line is currently empty."
  else
    # katz_deli = ["bill", "will", "jill"]
    # use an iterator here
    message = "The line is currently:"
    katz_deli.each.with_index(1) do |cust, position|
      message << " #{position}. #{cust}"
    end
    puts message
  end
end

# line(katz_deli)

def now_serving(katz_deli)
  # => ["bill", "will", "jill", "phill"]
  if katz_deli.count == 0
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{katz_deli[0]}."
    katz_deli.shift
  end
end