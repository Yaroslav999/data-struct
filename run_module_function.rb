module ModuleInfo
  def info
    puts 'Information'
  end
  module_function :info
end

class Info
  include ModuleInfo
  def call_info
    info
  end
end

puts ModuleInfo.info
c = Info.new
puts c.call_info


module ModuleInfo
  def info
    puts 'Updated information'
  end
end

puts ModuleInfo.info
puts c.call_info