# Write your code here.
katz_deli = []

def line(line)
  if line.length > 0 
    lined=[]
    line.each_with_index do |item, index|
      lined << "#{index+1}.#{item} "
    end
    return "The line is currently: #{lined.join("")}"
  else
  puts "The line is currently empty."
end
end

puts line(["Logan", "Avi", "Spencer"])