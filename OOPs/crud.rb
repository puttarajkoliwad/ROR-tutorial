#Day-8:

#CRUD operations: Create Read Update Delete operations

#In this section we will be learning usage of 'bcrypt()' and creating 'modules' and CRUD operations.

#In order to work with 'bcrypt()' we must 'require' 'bcrypt'
#'require' is key word used to load an external package to our current program.

require 'bcrypt'

#We will be creating an of users and with their {username, password} as an entry, and try to hash the passwords using 'bcrypt()' 
users = [
    { username: "mashrur", password: "password1" },
    { username: "jack", password: "password2" },
    { username: "arya", password: "password3" },
    { username: "jonshow", password: "password4" },
    { username: "heisenberg", password: "password5" }
  ]

  



#Creating module
module Crud
    puts "Activated CRUD!"

    #Creating a function to hash the passwords using 'BCrypt::Password.create(password)'
    def create_hash(password)
        BCrypt::Password.create(password)
    end
    
    
    #Create secure RECORDS
    def secureRecords(users)       #'self' OR 'module/Class' name makes the method a 'class-method'
        puts "Encrypting records..."
        users.each do |user|
            user[:password] = create_hash(user[:password])
            #NOTE: In real world application this will be done during 'Registration' process itself.
        end
        return users
    end

    #Creating a function to fetch an user entry from DATABASE that matches entered 'username'
    def get_user(username, users)
        puts "Searching for user '#{username}'"
        users.each do |user|
            return user if user[:username] == username
        end
        puts "User #{username} not found!"
        return nil
    end

    #Fetch user and verify password
    def verify_user(username, password, users)
        un = get_user(username, users)
        if(un.nil?)
            return false
        else
            return BCrypt::Password.new(un[:password]) == password
        end
    end
end
