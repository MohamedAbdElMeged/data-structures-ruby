require 'byebug'
class Stack
  attr_accessor :first, :last, :size

  def initialize
    @first = nil
    @last = nil
    @size = 0
  end

  def push(val)
    new_node = Node.new(val)
    if @size.zero?
      @first = new_node
      @last = new_node
    else
      first_tmp = @first
      @first = new_node
      @first.next_node = first_tmp
    end
    @size += 1
  end

  def pop
    raise StandardError, 'StackEmptyException' if @size.zero?

    popped_node = @first
    @first = popped_node.next_node
    @size -= 1
    @last = nil if @size.zero?
    popped_node.val
  end
end

class Node
  attr_accessor :val, :next_node

  def initialize(val)
    @val = val
    @next_node = nil
  end
end

stk = Stack.new
n = gets.chomp
while n != 'c'
  stk.push(n.to_i)
  n = gets.chomp
end
puts stk.pop until stk.size.zero?
