class MagicClass
 def method_missing(name, *args)
   method_name = name.to_s
   super unless method_name =~ /^magic_\w+/
   name = get_name(method_name)
   puts "Part of the method name is #{name}"   
 end

 def get_name(method_name)
   method_name.split("_", 2)[1]
 end
end

magic = MagicClass.new
magic.magic_hey_there
magic.magic_mike_he_he_he