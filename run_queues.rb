require_relative 'lib/queue'

queue = QueueNames.new

puts 'size of queue'
queue.count
queue.info

puts 'Add names:'
queue.enqueue('John')
queue.enqueue('Clark')
queue.enqueue('Jessica')

queue.peek
queue.info

puts 'Delete'
queue.dequeue

puts 'Size of queue'
queue.count
queue.peek
