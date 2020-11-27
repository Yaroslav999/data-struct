class Calculator
  attr_reader :options

  def calculate(a, b)
    puts yield(a, b)
  end
end


Calculator.new.calculate(2, 3) { |a, b| a + b }
Calculator.new.calculate(2, 3) { |a, b| a * b }
Calculator.new.calculate(2, 3) { |a, b| a - b }

n_squared = ->(n) { n ** 2 }

# ruby 2.5
puts 2.yield_self(&n_squared).yield_self(&n_squared)
# ruby 2.6
puts 4.then(&n_squared).then(&n_squared)
