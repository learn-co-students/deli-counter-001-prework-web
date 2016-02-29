require "pry"

def line(array)
  if array.empty?
    puts "The line is currently empty."
  else 
    full_line = []
    array.each_with_index do |name, index|
      full_line << "#{index + 1}. #{name}"
    end
    string = full_line.join(" ")
    puts "The line is currently: #{string}"
  end
end

def take_a_number(array_line, name_st)
  array_line << name_st
  puts "Welcome, #{name_st}. You are number #{array_line.count} in line."
end

def now_serving(array_line)
  if array_line.empty?
    puts "There is nobody waiting to be served!"
  else 
    puts "Currently serving #{array_line[0]}."
    array_line.shift
  end
end

@@line_counter = {}

def get_a_number(array)
  if array.empty? 
    if @@line_counter[array.object_id] == nil
      array << 1
    else
      array << @@line_counter[array.object_id]
    end
  else
    array << (array.last + 1)
  end
  # binding.pry
  return array.last
end

def serve_customer(array)
  # binding.pry
  if array.length == 1
    @@line_counter[array.object_id] = (array.shift + 1)
  else
    @@line_counter[array.object_id] = 0
    array.shift
  end
end

# def line(array)
#   counter = 0
#   if array == []
#     puts "The line is currently empty."
#   else
#     last = ""
#     full = ""
#     until counter == array.count
#       order = " #{counter + 1}. #{array[counter]}"
#       full = last + order
#       last = full
#       counter += 1
#     end
#     puts "The line is currently:#{full}"
#   end
# end

# def take_a_number(array, name)
#   if array == []
#     array.unshift(name)
#     puts "Welcome, #{name}. You are number #{array.count} in line."
#   else
#     array.push(name)
#     puts "Welcome, #{name}. You are number #{array.count} in line."
#   end
# end

# def now_serving(array)
#   if array == []
#     puts "There is nobody waiting to be served!"
#   else
#     puts "Currently serving #{array[0]}."
#     array.shift
#   end
# end

# @@global_get_a_number = 0
# @@global_returned_nil = 0

# def get_a_number(array)
#   @@global_get_a_number += 1
#   if @@global_returned_nil == 1
#     number = @@global_get_a_number
#     array << number
#   else
#     if array == []
#       @@global_get_a_number = 1
#       number = array.count + 1
#       array << number
#     else
#       number = array.last + 1
#       array << number
#     end
#   end  
#   number
# end

# def serve_customer(array)
#   take_off = array.shift
#   if array == []
#     @@global_returned_nil += 1
#   end
#   return take_off
# end
