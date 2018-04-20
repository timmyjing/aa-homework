class Queue

  def initialize
    @queue = []
  end

  def enqueue(el)
    queue.push(el)
  end

  def dequeue
    queue.shift
  end

  def show
    queue.first
  end

  private
  attr_reader :queue
end
