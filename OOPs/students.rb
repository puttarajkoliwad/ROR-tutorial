#OOPs implementation in Ruby

require_relative 'crud'

#Below two lies do the same work(importing), but used if the modules are located in different directories.
#$LOAD_PATH << '.'
#require 'crud'

#Day-6
#Defining a class: A Class is defined using the 'class' keyword. Classes in Ruby are declared in CamelCase.

class Student

    #Including a feature from an exteral module(mixin)
    #Class methods can not be used directly in a Class as a mixin.
    include Crud

    #Instance variables of a Class are declared using '@' key infront of them.
    @id = 1
    @name
    @username
    @password

    #In ruby Classes by default are encapsulated. To access the instance variables we need to define 'getters and setters'
    # def id=(val)
    #     #This is a custom setter. 
    #     #**NOTE: spaces(' ') are not allowed around the assignment operator '='. Notice above!
    #     @id = val
    # end

    # def id
    #     #This is a custom getter
    #     @id
    # end

    #Using the custom 'getters & setters' will make the code lengthy since each attribute needs to be associated with getter&setter seperately.
    #We can use Ruby way of 'getters & setters' called 'attr_accessor'. If we  list the attributes with 'attr_accessor', 'getters&setters' will automatically be created for the ones listed.
    attr_accessor :name, :username,:password #The attributes are Symbols, hence listed this way. This line defines both 'getters & setters'.

    #'attr_accessor' enables the user to edit attributes. What if we dont want an attribute to be modified by the user, but can only be 'read'? We can use 'attr_reader' in that case.
    #attr_reader: This defines ONLY getters for the attributes listed in it. So, these attributes can not be modified by the user.
    attr_reader :id
    #To fetch the attribute value using 'attr_reader', it should be set wither using 'initializor' OR a setter OR be a 'Class variable'.
    def set_id
        @id = 0 #Normally IDs are generated using packages, like UUID package for example. Never hard-coded.
    end


    #'initialize()': (constructor) This method allows to initialize the values for attributes of an object during object creation('new') itself.
        #The values are passes as arguments to the 'initialize()' method.
    def initialize(s_id, s_name, s_username, s_password)
        @id = s_id
        @name = s_name
        @username = s_username
        #@password = s_password  //This is not a safe way to store a password
        @password = self.create_hash(s_password)
    end

    def to_s
=begin
        Object.to_s is Object class method and is called by default when an instance is returned.
        This method, by default returns a hash value of the object. In order to get a proper representation
        of our object, the programmer should override this method in his class and give it a desired definition. 
        rescue => exception
=end
        "Name: #{@name}\nID: #{@id}\nUsername: #{@username}"
    end
   
end

#Creating an 'instance/object' of a Class: An object of a class can be created using the 'new' keyword.

# stud1 = Student.new
# puts stud1 #This uses 'Student.to_s' method.
# #stud1.id = 1 #This works if 'id' has custom setter OR attr_accessor defined
# puts stud1.id
# stud1.name = "Putta" #Possible since attr_accessor is defined for this attribute.
# stud1.set_id
# puts stud1
# puts Student

#object creation using 'initialize()'
stud2 = Student.new(2, "Shronoa", "un2", "pw2")
puts stud2

#Day-8
users = [
    { username: "mashrur", password: "password1" },
    { username: "jack", password: "password2" },
    { username: "arya", password: "password3" },
    { username: "jonshow", password: "password4" },
    { username: "heisenberg", password: "password5" }
  ]

#puts stud2.secureRecords(users)
puts stud2.password