def get_a_number(line)
  if line.empty?
    line.push(1)
  else
    line.push(line.last + 1)
  end
  line.last
end

def serve_customer(line)
  customer_up = line.first
  line.shift
  customer_up
end