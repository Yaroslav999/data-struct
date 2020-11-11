require_relative 'lib/stack'

queue = StackNames.new

puts 'size of queue'
queue.count
queue.info

puts 'Add names:'
queue.add_name('John')
queue.add_name('Clark')
queue.add_name('Jessica')

queue.peek
queue.info

puts 'Delete'
queue.delete_name

puts 'Size of queue'
queue.count
queue.peek
queue.info
