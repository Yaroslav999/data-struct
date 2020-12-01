class String
  def blue
    "\e[34m#{self}\e[0m"
  end

  def red
    "\e[31m#{self}\e[0m"
  end

  def yellow
    "\e[33m#{self}\e[0m"
  end
end

module Colorize
  refine String do
    def blue
      "\e[30m#{self}\e[0m"
    end

    def red
      "\e[36m#{self}\e[0m"
    end

    def yellow
      "\e[35m#{self}\e[0m"
    end
  end
end

puts 'Without module'
puts 'Check the color'.blue
puts 'Check the color'.yellow
puts 'Check the color'.red

puts 'With module refine'
using Colorize
puts 'Check the color'.blue
puts 'Check the color'.yellow
puts 'Check the color'.red
