# Write your code here.
katz_deli = []

def line(customers)
  output = ""
  if customers.empty? == false
    output = "The line is currently:"
    customers.each.with_index(1) do |person, index|
      output << " #{index}. #{person}"
    end
  elsif customers.empty? == true
    output = "The line is currently empty."
  end
  puts output
end

def take_a_number(line_of_customers, new_name_to_add)
  line_of_customers << new_name_to_add
  place_in_line = line_of_customers.size
  puts "Welcome, #{new_name_to_add}. You are number #{place_in_line} in line."
  line_of_customers
end

def now_serving(customers)
  if !(customers.empty?)
    puts "Currently serving #{customers[0]}."
    customers.shift
  else
    puts "There is nobody waiting to be served!"
  end
end

$ticket_queues = {}
$current_numbers = {}

def get_a_number(queue)
  if $ticket_queues.length == 0
    $ticket_queues[:deli1] = queue
    $ticket_queues[:deli1] << 1
    $current_numbers[:deli1] = 1
    return 1
  else
    if $ticket_queues[:deli1] == queue
        current_line = $ticket_queues[:deli1]
        if !(current_line.empty?)
            current_spot = current_line[-1]
            current_spot += 1
        else
            current_spot = $current_numbers[:deli1] + 1
        end
        $ticket_queues[:deli1] << current_spot
        $current_numbers[:deli1] = current_spot
        return current_spot
    elsif [:deli2].any? { |k| $ticket_queues.key?(k) }
        current_line = $ticket_queues[:deli2]
        if !(current_line.empty?)
            current_spot = current_line[-1]
            current_spot += 1
        else
            current_spot = $current_numbers[:deli2] + 1
        end
        $ticket_queues[:deli2] << current_spot
        $current_numbers[:deli2] = current_spot
        return current_spot
    else
        $ticket_queues[:deli2] = queue
        $ticket_queues[:deli2] << 1
        $current_numbers[:deli2] = 1
        return 1
    end
  end
end

def serve_customer(queue)
  $ticket_queues.each do |key, value|
      if $ticket_queues[key] == queue
          current = queue[0]
          $ticket_queues[key].shift
          return current
      end
  end
end








