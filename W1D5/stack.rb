class Stack

  def initialize
    @stack = []
  end

  def add(el)
    stack.push(el)
  end

  def remove
    stack.pop
  end

  def show
    stack.last
  end

  private
  attr_accessor :stack
end
