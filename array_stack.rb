class Stack
  def initialize(size)
    @data = Array.new(size, 0)
    @top = -1
    @capacity = size
  end

  def push(val)
    raise StandardError, 'StackOvarflowException' if size == @data.size

    @top += 1
    @data[@top] = val
  end

  def is_empty?
    @top == -1
  end

  def pop
    raise StandardError, 'StackEmptyException' if is_empty?

    @top_value = @data[@top]
    @top -= 1
    @top_value
  end

  def top
    @data[@top]
  end

  def size
    @top + 1
  end
end
