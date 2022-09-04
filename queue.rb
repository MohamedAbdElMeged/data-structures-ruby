class Queue
  def initialize(size)
    @size = size
    @front = -1
    @back = -1
    @count = 0
    @data = Array.new(size)
  end

  def enq(val)
    raise StandardError, 'QueueFullException' if @count == @data.size

    @front += 1 if @count.zero?
    @back += 1
    @count += 1
    @data[@back] = val
  end

  def deq
    raise StandardError, 'QueueEmptyException' if @count.zero?

    @val = @data[@front]
    @front += 1
    @count -= 1
    @val
  end

  def empty?
    @count.zero?
  end
end
