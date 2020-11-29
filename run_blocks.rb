class Calculator
  def calculate(a, b)
    puts yield(a, b)
  end
end


Calculator.new.calculate(2, 3) { |a, b| a + b }
Calculator.new.calculate(2, 3) { |a, b| a * b }
Calculator.new.calculate(2, 3) { |a, b| a - b }



# yield_self
 n_squared = ->(n) { n ** 2 }
 # ruby 2.5
 puts 2.yield_self(&n_squared).yield_self(&n_squared)
 # ruby 2.6
 puts 4.then(&n_squared).then(&n_squared)

# proc
proc_calculate = Proc.new { |a, b| a + b }
puts "Proc calculate #{proc_calculate.call(2, 3)}"

# lambda
lambda_calculate = -> (a,b) { a + b }
puts "Proc calculate #{lambda_calculate.call(2, 3)}"
