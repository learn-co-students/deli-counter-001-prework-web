def get_a_number(line)
  #position = line.length + 1

  if line.empty?
    position = 1
  else
    position = line.last + 1
  end

  line.push(position)

  position

end

def serve_customer(line)
  line.shift
end


