class QueueNames
  attr_reader :names
  def initialize
    @names = []
  end

  def info
    puts "Names in queue: #{names.join(', ')}"
  end

  def dequeue
    last_name = names.last
    names.pop
    puts "#{last_name} was delete from the queue"
  end

  def enqueue(name)
    names.unshift(name)
    puts "#{name} was add to the queue"
  end

  def peek
    puts "Next #{names[-1]}"
  end

  def count
    puts "Count of queue: #{names.count}"
  end
end