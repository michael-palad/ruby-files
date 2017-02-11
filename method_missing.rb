class SomeClass
  def method_missing(name, *args)
    puts "#{name}: #{args.join(", ")}"
  end

  def self.method_missing(name, *args)
    puts "Class #{name}: #{args.join(", ")}"
  end
end

some = SomeClass.new

some.wey :hey, "there"
SomeClass.haho "Wat?", 1, 2


