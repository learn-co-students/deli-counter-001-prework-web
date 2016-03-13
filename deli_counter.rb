def line(queue)
  if queue.empty?
    puts "The line is currently empty."
  else
    status = "The line is currently:"
    queue.each_with_index do |customer, position|
      status.concat(" #{position + 1}. #{customer}")
    end
    puts status
  end
end
