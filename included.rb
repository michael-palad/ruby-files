at_exit do
  puts "First at_exit block"
end

module SomeModule
  module SomeClassModule
    def say
      puts "Howdy!"
    end
  end

  def self.included( the_class )
    puts "#{the_class} included #{self}"
    the_class.extend(SomeClassModule)
  end
end

at_exit { puts "Another at_exit block" }

class SomeClass
 include SomeModule
end


SomeClass.say

at_exit do
  puts "Starting to exit program"
  puts "Exiting program"
end