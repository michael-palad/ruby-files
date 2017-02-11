# Don't use self in to_s. It becomes an endless recursive call.

class OpenClass
  def initialize(name, age)
    @name = name
    @age = age
  end

  def to_s
    "OpenClass: #{@name}, #{@age}"
  end
end

the_open = OpenClass.new('Erick', 21)
puts the_open

class OpenClass
  alias_method :old_to_s, :to_s

  def to_s
    "Howdy! " + old_to_s
  end

  def sample_method
    puts "This is a sample method"
  end
end

puts the_open
the_open.sample_method

class OpenClass
  remove_method :sample_method
end

the_open.sample_method






