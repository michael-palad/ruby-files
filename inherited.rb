class Animal

  def self.inherited( child_class )

    puts "#{child_class} inherited from #{self}"

  end

end



class Dog < Animal; end



class Cat < Animal; end