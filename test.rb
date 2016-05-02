$ar_pointer = nil
$tracker = 1
def get_a_number(queue)
    if ($ar_pointer.nil? || !($ar_pointer.equal?(queue) ))
      $ar_pointer = queue
      $tracker = 1
    end
     if ( queue.length == 0 )
          queue.push($tracker)
             $tracker +=1
    else
          queue.push($tracker)
            $tracker+=1
    end
       return queue.last
end
def serve_customer (queue)
return queue.shift
end
#queue = []
#get_a_number(queue)
#get_a_number(queue)
#queue = []
#bob = get_a_number(queue)
#alice = get_a_number(queue)
#
#
#
#queue = []
#get_a_number(queue)
#get_a_number(queue)
#queue = []
#get_a_number(queue)
#get_a_number(queue)
#serve_customer(queue)
#get_a_number(queue)
#queue = []
#get_a_number(queue)
#get_a_number(queue)
#serve_customer(queue)
#serve_customer(queue)
#get_a_number(queue)
#get_a_number(queue)
#
#puts queue
#
