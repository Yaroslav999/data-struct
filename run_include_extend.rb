module SpeakVariant1
  def says
    'Hi'
  end
end

module SpeakVariant2
  def says
    'Hello'
  end
end

class Human
  extend SpeakVariant1
  include SpeakVariant2
end

puts Human.says

man = Human.new

puts man.says
