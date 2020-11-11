class StackNames
  attr_reader :names
  def initialize
    @names = []
  end

  def info
    puts "Names in stack: #{names.join(', ')}"
  end

  def delete_name
    first_name = names.first
    names.shift
    puts "#{first_name} was delete from the stack"
  end

  def add_name(name)
    names.unshift(name)
    puts "#{name} was add to the stack"
  end

  def peek
    puts "Next #{names[0]}"
  end

  def count
    puts "Count of queue: #{names.count}"
  end
end