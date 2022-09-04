# require_relative './array_stack'
# stk = Stack.new(100)
# stk.push(1)
# stk.push(2)
# stk.push(5)

# puts stk.pop until stk.is_empty?

#############################
require_relative './queue'
que = Queue.new(100)
que.enq(1)
que.enq(2)
que.enq(5)

until que.empty?
  puts que
  puts que.deq
end
