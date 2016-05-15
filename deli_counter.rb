#Original solution begins on line 46
#Modified to Reset Roll begins on ine 76
#Added Text output begins on line 117



def line(line)
  que = "The line is currently:"
  if line.size == 0
    que = que.chomp(que[que.size-1]) #to remove ':' from que
    que += " empty."
  else
    for i in 0...line.size
      que += " #{i+1}. #{line[i]}"
    end
  end
  puts que
end


def take_a_number(line, name)
  if line.size == 0
    line.push(name)
    puts "Welcome, #{name}. You are number #{line.size} in line."
  else
    line.push(name)
    puts "Welcome, #{name}. You are number #{line.size} in line."
  end

end


def now_serving(line)
  if line.size == 0
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{line.shift}." #to remove and print name at once
  end
end






# ------ My Solution ----- #

roll = []
queue = []

def counter(roll, queue)
  if roll.size === 0
    ticket = 1
    roll.push(ticket)
    queue.push(ticket)
  else
    ticket = roll.size + 1
    roll.push(ticket)
    queue.push(ticket)
  end
  return ticket
end

def get_a_number(queue, roll)
  ticket = counter(roll, queue)
  return ticket
end

def serve_customer(queue)
  queue = queue.shift()
  return queue
end



# ---- My Solution Modified to Reset Ticket Roll --- #

queue = []
roll = []

def change_ticket_roll(roll)
  while roll.size > 0
    roll.pop()
  end
end

def counter(roll, queue)
  if roll.size == 99
    change_ticket_roll(roll)
    ticket = 1
    roll.push(ticket)
    queue.push(ticket)
  elsif roll.size == 0
    ticket = 1
    roll.push(ticket)
    queue.push(ticket)
  else
    ticket = roll.size + 1
    roll.push(ticket)
    queue.push(ticket)
  end
  return ticket
end

def get_a_number(queue, roll)
  counter(roll, queue)
end

def serve_customer(queue)
  customer = queue[0]
  queue = queue.shift()
  return queue
end



#  ---- My Solution Modified with Text Print Outs ---- #



queue = []
roll = []

def change_ticket_roll(roll)
  while roll.size > 0
    roll.pop()
  end
end

def counter(roll, queue)
  if roll.size == 99
    change_ticket_roll(roll)
    ticket = 1
    roll.push(ticket)
    queue.push(ticket)
    puts "You are number #{ticket}."
  elsif roll.size == 0
    ticket = 1
    roll.push(ticket)
    queue.push(ticket)
    puts "You are number #{ticket}."
  else
    ticket = roll.size + 1
    roll.push(ticket)
    queue.push(ticket)
    puts "You are number #{ticket}."
  end
  return ticket
end

def get_a_number(queue, roll)
  counter(roll, queue)
end

def serve_customer(queue)
  customer = queue[0]
  puts "Calling ticket #{customer}!"
  queue = queue.shift()
  if queue === nil
    puts "There is no one waiting to be served."
  end
  return queue
end



