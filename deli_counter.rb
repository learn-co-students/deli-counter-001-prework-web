# class Deli

def line(array)
  #order = []
  #number = 1
  counter = 0
  if array == []
    puts "The line is currently empty."
  else
    #puts "The line is currently: #{array.count}. "
    last = ""
    full = ""
    until counter == array.count
      order = " #{counter + 1}. #{array[counter]}"
      full = last + order
      last = full
      counter += 1
    #array.collect do |patron|
      #order << "#{number}. #{patron}"
      #number += 1
    end
    #order.flatten
    puts "The line is currently:#{full}"
  end
end

def take_a_number(array, name)
  if array == []
    array.unshift(name)
    puts "Welcome, #{name}. You are number #{array.count} in line."
  else
    array.push(name)
    puts "Welcome, #{name}. You are number #{array.count} in line."
  end
end

def now_serving(array)
  if array == []
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{array[0]}."
    array.shift
  end
  #nobody = puts "There is nobody waiting to be served!"
  #people = puts "Currently serving #{array[0]}."
  #array == [] ? nobody : people
  #array.shift
end

# $get_a_number_global = []
# def full_array(last_array, integer = 1)
#   last_array = last_array << integer
#   puts "last_array is #{last_array}"
#   # return last_num
# end

# def full_hash
#   deli_hash = {:position0 => 0}
#   puts "deli_hash is #{deli_hash}"
# end

# def array_helper
#   counter = yield
#   if yield == 0
#     counter = 0
#     counter += 0
#   elsif yield == 1
#     counter += 1
#   elsif yield == -1
#     counter -= 1
#   end
#   puts "counter is #{counter}"  
#   counter
# end

# helper = 0
# array_helper do |x|
#   helper = 0
# end

@@global_get_a_number = 0
# @@global_serve_customer = 0
# @@global_array_nil = 0
@@global_returned_nil = 0


def get_a_number(array)
  @@global_get_a_number += 1
  # puts "global_get_a_number is #{@@global_get_a_number}"
  # puts "global_serve_customer is #{@@global_serve_customer}"
  # puts "global_array_nil is #{@@global_array_nil}"
  # puts "global_returned_nil is #{@@global_returned_nil}"
  if @@global_returned_nil == 1
    number = @@global_get_a_number
    array << number
  else
    if array == []
      @@global_get_a_number = 1
      # @@global_array_nil += 1
      number = array.count + 1
      array << number
    else
      number = array.last + 1
      array << number
    end
  end
  # puts "array.count is #{array.count}"
  # array_helper_inside = array_helper do |x|
  #   x = array.count
  # end
  # puts "array_helper_inside #{array_helper_inside}"
  # global = $get_a_number_global
  # if global == [] && array == []
  #   number = array.count + 1
  #   array << number
  # elsif array == [] && global != []
  #   puts "global inside elsif #{global.last}"

  #   number = global.last + 1
  #   array << number
  # else
  #   number = array.last + 1
  #   array << number
  # end
  # $get_a_number_global << array.last
  # puts "array is #{array}"
  # puts "global array is #{$get_a_number_global}"

  # deli_array = full_array(array)
  # puts "deli_array #{deli_array}"
  # number = 0
  # if block_given?  
  #   array.each do |x|
  #     yield x
  #   end
  # end
  # if block_given?
  #   yield
  # end
  # puts "yield is #{yield}"

  # if array == []
  #   @@global_array_nil += 1
  #   number = array.count + 1
  #   array << number
  # else
  #   number = array.last + 1
  #   array << number
  # end

  # {|x| x << number}
  #   puts "array is #{array}"
  #   puts "array 1 to -1 is #{array[1..-1]}"
  # return array[1..-1]
  # new_array = Array.new
  # array.each do |x|
  #   # new_array = Array.new << x
  #   new_array << x + 1
  #   puts "new array is #{new_array}"
  # end
  # puts "new array outside .each is #{new_array}"
  
  number
  # puts "number is #{number}"
  # puts "array is #{array}"
end

def serve_customer(array)
  # @@global_serve_customer += 1
  # global = $get_a_number_global.shift
  # puts "global in serve is #{$get_a_number_global}"
  # full_array(array.last)
  # array_for_full = []
  take_off = array.shift
  # puts "take_off #{take_off}"
  # full_hash.merge!({:position1 => take_off})
  # puts "full_hash #{full_hash}"
  # array_for_full = array_for_full << take_off
  # full_array(array_for_full, take_off)
  # puts "array_for_full #{array_for_full}" 
  if array == []
    @@global_returned_nil += 1
  end
  return take_off
  # take_off = array[1..-1]  
  #   puts "array is #{array}"
  #   puts "array 1 to -1 is #{array[1..-1]}"
  # return array[0]
end

# holding_array = [0]

# get_a_number(holding_array) do |array|
#   puts "#{array}"
# end

# puts "holding_array is #{holding_array}"

# array = []
# array << get_a_number(array)
# array << get_a_number(array)
# array << get_a_number(array)
# array << get_a_number(array)
# puts "Array is #{array}"

# line = []
# get_a_number(line)
# puts "line is #{line}"
# get_a_number(line)
# puts "line is #{line}"
# serve_customer(line)
# puts "line is #{line}"
# serve_customer(line)
# puts "line is #{line}"
# get_a_number(line)
# puts "line is #{line}"
# get_a_number(line)
# puts "line is #{line}"

# array = [1, 2, 3, 4]
# get_a_number(array)
# get_a_number(array)
# array = []
# get_a_number(array)
# puts "get_a_number is #{get_a_number}"


# counter = 0
# def last_in_line(array = 0)
#    number_final = array << array.count


# end
