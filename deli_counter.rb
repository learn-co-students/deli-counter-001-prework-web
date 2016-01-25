# Write your code here.
def line(deli)
	if deli.empty?
		puts "The line is currently empty."
	else
		lineMsg =  "The line is currently: "
		deli.each_with_index{|val,idx|
			#lineMsg += (idx+1).to_s+". #{val} "
      lineMsg += "#{idx+1}. #{val} "
		}
		puts lineMsg.strip!
	end
end

def take_a_number(deli, name)
	deli << name
	num = deli.size
	puts "Welcome, #{name}. You are number #{num} in line."
end

def now_serving(deli)
	if deli.empty?
		puts "There is nobody waiting to be served!"
	else
		name = deli.shift
		puts "Currently serving #{name}."
	end
end


def get_a_number(line)
  if line.empty?
    lineNum = 1
  else
    lineNum = line[line.size-1]+1
  end
  line << lineNum
  return lineNum
end

def serve_customer(line)
  if line.empty?
    :no_customers
  else
    line.shift
  end
end
