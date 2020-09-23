#Ruby is an 'Interpreted' programming laguage used extensiely in web-dev. Built like python.
#This is a single line comment

#**NOTE: Ruby has no pre/post increment(++)/decrement(--) operators!!!

=begin
    This ia a comment as well!.
    But a multiline comment enclosed between '=begin' and '=end' keywords.
    They will only dereferenced from column1 only!
=end

#Data types in ruby: 1) String, 2) Integer 3) Float, etc.
#But variables in ruby are 'dynamically declared!'

### DAY-2
#Printing to output
    #p: 'p' is println in ruby. Returns the argument itself! Starts from whre the cursor is but goes to next line after printing. Doesn't exclude double quotation("").
    #puts(put string): 'puts' is another println in ruby but, it returns 'nil'. Goes to the new line first, then prints the content and then goes to the new line again.
    #print: 'print' DOESN'T add a 'new-line' after it. 

print "Hello, this is printed by 'print'."
puts " Hello, this is printed by 'puts'"
p "Hello, this is printed by 'p'. Please notice the double quotations(\"\") around the sentence."


#Arrays in ruby
address = [1, 2, 3, 4, 5, 6, 7, 8, 9]
p address
p address[6]
#'Array.reverse' method doesn't change original array. But 'Array.reverse!' method applies changes on the original array also.
rev = address.reverse
p rev
p address


#methods: start with the keyword 'def' and end with 'end' keyword.

def wisher(name)
    puts "Hello "+ name+"!" #This is 'String concatenation'. We will be learning this in 'Strings' session below.
end
wisher "Shronoa" #Notice you didn't put the argument in (). But, it still works.


#String
=begin
    String is one of the basic data-types in ruby and is IMMUTABLE!
    A String is always enclosed within double-quotes("") OR single-quotes('').
    You can perform multiple operations on Strings like 'String-concatenation', 'String-Interpolation', etc.
=end

string1 = "Hello "
string2 = 'Hey'

# 01) String concatenation: It is the process of joing multiple 'strings' to form a single string.
string3 = string1 + string2 + " "
p string3   # This prints 'Hello Hey '

    #Concatenating string with OTHER data-type results in "TypeError"
    #String3 + 4 : This results in 'TypeError' for '+' saying "no implicit conversion of Integer into String."

# 02) String interpolation('#{}'): Using variable 'values' within a string. Works only with double-quotes("").
name = "Shronoa"
num = 3000

wish1 = "#{string1}#{name}!"
wish2 = "#{string2} #{name}!"
wish3 = "I love you #{num}!" #Notice you could use Integer data-type 'num' here.

p wish1
p wish2
p wish3

wrong_wish = 'I luv you #{num}' #Notice that string interpolation doesn't work. Even when you use pure string variables it won't work. You can try that on your own.
p wrong_wish

# 03) Common String methods:
=begin
    01) String.reverse: returns a reversed string but doesnt change the original String.
    02) String.reverse!: reverses the string and applies the changes to original string also.
    03) Object.to_s: convarts the Object to a String object.
    04) Object.class: tells the data-type of the object.
    05) Object.methods: Lists all the methods that belong to the class of Object.
    06) String.empty?: Returns a boolean value saying whether it's an empty String or not.
        "".empty? //true
    07) String.nil?: Returns if the Object is nil.
        "".nil? //false
        nil.nil? //true
    08) String.length: returns the length of the string.
    09) String[index]: Returns the character at 'index' of String.
    10) Object.is_a?(data-type): tells whether the object belongs to the data-type specified. Boolean!
    11) Object.instance_of?(Class): tells whether the object is an instance of the specified class. Boolean! 
    12) String1.eql?("ref_string"): tells whether String1 is same as ref_string
    13) var1.equal?(var2): 
        ***Be careful with this method. It only checks if the two variables are pointing to same address.
        "shronoa".equal?("shronoa") //false
        var1 = 4
        var2 = var1
        var1.equal?(var2) //true
    14) string1.include?('ref_string'): checks if the ref_string is a substring of string1. Boolean!
    15) string1.sub("ref_substring","substitute_string"): In string1, the first occurence of 'ref_substring' is replaced by 'substitute_string'.
    16) string1.gsub("ref_substring","substitute_string"): All the occurences of 'ref_substring' in string1 are replaced by 'substitute_string'.
    17) String.count("char_sequence"): Returns the max occuring frequency of any of the substring in 'char_sequence' passed.
        str = "shronoa"
        str.count("o") //2
        str.count("sh") //2 ???
        str.count("zs") //1  ???
        str.count("sz") //1 ???
        str.count("on") //3 ??!!!
    18) String.to_i: parses the Integer value of String. i.e., "5.5".to_i //5
    19) String.to_f: parses the Float value of String. i.e., "5".to_f //5.0
=end


### DAY-3, Sep. 16, Wed

#Reading user input:
=begin
    We can read the user/console input using 'gets.chomp' method. It takes the input in String format.
    But, you can parse that input to whichever data-type you need using String functions that we saw in String section.
=end
print("Please enter a number: ")
input = gets.chomp
puts(input.class) #String

#Numbers in ruby
#Number, Integer, Float
#Division of an Integer by another Integer is always an Integer. i.e., 10/4 is 2, NOT 2.5!


#Integer: Data-type to store non-decimal numbers.
=begin
Integer Methods:
    01) Integer.times{execution_stmt}: This awesome method executes the 'execution_stmt' through Integer times specified.
        Comes handy in printing line of dashes and other such things. Ex.: 5.times{print("-")} // -----
    02) Integer.pred: Returns the predecessor of the specified Integer.Ex: 5.pred // 4
    03) Number.i: returns the IMAGINARY NUMBER representation of the specified value. Ex: 5.5.i //(0 + 5.5i)
    04) Integer.pow(num): Returns the Integer raised to the power of 'num'.
        5.pow(2) //25
        5.pow(1/2) //1
        6.pow(1/2) //1
        16.pow(1/2) //1
        16.pow(0.5) // 4.0
    05) Integer.~: (Negation) Negate the Integer value and shift one place left on the number line.
        5.~ // -6
        -7.~ // 6
    06) Integer.odd? : Returns a Boolean value daying if the Integer is Odd.
    07) Integer.even? : Returns a Boolean value determining if the Integer is Even.
    08) Number.abs: Returns the absolute value of Number. Ex.: -5.abs //5
    09) Number.abs2: Returns square of the Number specified.
    10) Number.truncate(n): Truncates the Number to 'n' digits.
        5.truncate //5
        5.33333.truncate //5
        5.33333.truncate(2) //5.33
        5.truncate(-1) //0
        **If 'n' is Float, it's Integer value will be considered.
        5.333truncate(1.6) //5.3
    11) Integer.chr : Returns the character representation of the Integer. Ex.: 11.chr //"\v"
    12) Integer1.lcm(Integer2): Returns the LCM of Integer1 and Integer2. Ex.: 2.lcm(3) //6
    13) Integer1.gcd(Integer2): Returns the GCD of Integer1 and Integer2. Ex.: 2.gcd(3) //1
    14) Integer1.gcdlcm(Integer2): Returns an array of length 2 with GCD and LCM values of Integer1 and Integer2 respectively.
        2.gcdlcm(3)// [1, 6]
    15) Number.round('n'): Returns the round value of the Integer to 'n' digits from the decimal point.
        5.54.round //6, by default n=0.
        5.54.round(1) //5.5
        5.54.round(2) //5.54
        5.56.round(1) //5.6
        5.round(-1) //10 ??
        4.round(-1) //0  ???
        5.round(-2) //0  ???
    16) Number.floor(n): Returns the PREVIOUS round Integer to 'n' digits from decimal point.
        11.floor //11  **Default value of 'n' is '0'.
        11.floor(1) //1
        General formula:  M.floor(n) = M, for all n>=0 & M belongs to Integer.
        11.floor(-1) //10
        11.floor(-2) //0
    17) Number.ceil(n): 'ceil' is just the inverse analogue of 'floor' method we seen above.
=end


#Conditional Statements(if, elsif, else, end):
=begin
    Conditional statements are used to switch/choose the program control to specific block that holds true for some predefined contion.
    if-else structure: An if-else structure starts with 'if' block and ends with 'end' keyword.
    'elsif' and 'else' block are optional and are used based on the requirement. If used 'else' block comes right before the 'end' keyword and can be used only once.
    'elsif' block can be used multiple times with different(for a well written code) conditions each time.
    
    if(condition1)
        some code
    elsif(condition2)
        some other code
    elsif(condition3)
        Another elsif code
    else
        some other code again
    end

    Notice that you don't specify any condition for 'else' block. This indicates, everything that is NOT true for previous blocks is true for 'else' block.

    **In most cases the conditions in 'if' and 'elsif' blocks are mutually exclusive. But, if they are not mutually exclusive, 
    the programmer should take care of the ORDER in which the conditions are used. See the example below.

    **'switch(case)' block is another advanced conditional block.
=end

#if-else example. This is an example from Hackerearth coding platform.
3.times{puts}
p "if-else example:"
15.times{print "-"}
puts
print("Please enter a number to verify: ")
num = gets.chomp.to_i
if(num%5==0 && num%3==0)
    p "This is devisible by 5 and 3."
elsif (num%5==0)
    p("This is devisible by 5 but not 3.")
elsif (num%3==0)
    p("This is devisible by 3, but not 5")
else
    p("This is not devisible by 3 or 5.")
end

def sectionBreak()
    2.times{puts}
    50.times{print "-"}
    print "CHAPTER ENDED"
    64.times{print "-"}
    3.times{puts}
end

sectionBreak()
#Arrays in ruby
=begin
    Arrays are index based collection of multiple values. They are flexible in size, allow heterogenous data-types.
    They also allow dynamic access using the index, and are mutable.
#Defining an array:
    arr = ["val", 2, 3, 4.6] //This is a standard declaration of an array.

#Array Methods:
#Creating an array:
arr = Array.new(size) #Class.new method returns an instance of the Class. Hence, Array.new() returns an empty array if size is not geiven. By default 'size' is zero.

#Adding elements to the array:
01) arr << elem: appends the 'elem' to the end of arr.
02) arr.push(elem): adds 'elem' to the end of arr.
03) arr[index] = elem : #index based insertion. 'elem' is inserted at 'index' of arr. If 'index' is greater than previous length of the array, the in-bettwen elements are marked nil. 
04) arr.unshift(elem) : 'elem' is added at 0th index of the array. Remaining elements are moved one index to right.

#Removing elements from array
05) arr.pop(): Last element from arr is removed and returned. Array length is decreased by 1.
06) arr.shift(): First element from arr is removed and returned. Array length is decreased by 1.
07) arr[index] = nil: element at 'index' in the arr is marked nil. Array length remains same.
08) arr.delete_at(index) : Removes the element at 'index' and returns in. Array length is decresed by 1.

#Other useful array mathods.
09) arr.join("insert_val"): Joins all the elements of array as a string by inserting 'insert_val' in between each element and returns it.
    By default 'insert_val' is empty string("").
    arr = [1, nil, 3, nil, nil, 4.5, nil, "end"]
    arr.join() // "134.5end"
    arr.join("%") // "1%%3%%%4.5%%end"      //How???
10) arr.sort() : sorts the array elements in their natural order if they are comparable. We can use bang(!) also.
11) arr.uniq(): Removes all the duplicate elements from the array. Can be used with bang(!).
12) arr.fill(fill_value): Fills 'fill_value' in all the indices.
13) arr.fill(fill_value, start_index, these_many): fills 'fill_value' in 'these_many' indices from 'start_index'. Array length will be increased and filled nil if required.
14) arr.flatten(n): Flattens the arr 'n' times. By default 'n' is DEPTH of the arr. Always 'n' is considered for >0. Can be used with bang(!).
15) arr.eql?(arr2): Checks if arr and arr2 have same elements(are equal), even in depths.
16) arr.shuffle(): Shuffles the position of arr elements. Can be used with bang(!).
17) %w("This is a string"): It is special method that returns string array of words within it delimited by space(' ').
=end

### Day-4: 17/09/2020, Thu.

#Creating an array:
arr = Array.new #arr = [], arr.empty?=true
arr =Array.new(3)  #arr = [nil, nil, nil], remember arr.empty? =false here.
arr =[1]

#Inserting elements into an array
arr.push(2) #[1, 2]
arr[3] = 4  #[1, 2, nil, 4], Notice 'nil' at index 2.
arr.unshift("start") #["start",1,2,nil,4]
arr << "end" #["start", 1, 2, nil, 4, "end"]

arr.pop() # ["start", 1, 2, nil, 4]
arr.shift() #[1, 2, nil, 4]
arr[3] = nil #[1, 2, nil, nil]
arr.delete_at(3) #[1, 2, nil]

arr.join() #"12"
arr.unshift(5) #[5, 1, 2, nil]
arr[3] = 0 #[5, 1, 2, 0]
arr.sort() # [0, 1, 2, 5], doesnt work with nil values
arr.push(5) #[5, 1, 2, 0, 5]
arr.uniq() # [5, 1, 2, 0] returns a temporary with no duplicate elements.
arr.fill(7) #[7, 7, 7, 7, 7]
arr.fill(1, 6, 2) #[7, 7, 7, 7, 7, nil, 1, 1], notice 'nil'
arr[5] = [0, [1, 2]] #[7, 7, 7, 7, 7, [0, [1, 2]], 1, 1]
arr.flatten() #[7, 7, 7, 7, 7, 0, 1, 2, 1, 2]
arr.flatten(1) #[7, 7, 7, 7, 7, 0, [1, 2], 1, 1], flattened the depth by 1 unit
arr2 = [7, 7, 7, 7, 7, [0, [1, 2]], 1, 1]
arr.eql?(arr2) # true
arr.shuffle() #[1, 7, 7, 7, [0, [1, 2]], 7, 1, 7] #Order may be diffenet eaxh time this command runs.

strarr = %w("This is a sentence") #strarr = ["This", "is", "a", "sentence"]

# ITERATORS: Iterators allow us to visit each element of any iterable collection.
# Range: It is a class returning a range of iterables.
span = 1..5
span.class() # Range
span.to_a() # [1, 2, 3, 4, 5]

def sectionStart
    20.times{print("-")}
    puts
end
p "Iterator"
sectionStart()
puts

#Array.each()
# each() method is Array.map() analogue of Javascript. It goes to each entry and does something with that value and returns some output.
# Number of outputs returned in Array.each() are equal to length of the array.
puts("Array.each(): ")
print("Iterator.each using 'do': ")
arr.each do |elem|
    print elem.to_s + " "
end
puts
puts

#2nd way using Iterator.each
print("Array.each{} using {}: ")
arr.each {|elem| print(elem.to_s + " ")}
2.times{puts}

#Array.select(condition): It is the Array.filter() analogue of Javascript. It visits each entry and checks the 'condition'. If it holds good, returns that entry.
puts("Array.select():")
selected = arr.select{|elem| elem.is_a?(Integer)}
puts("Array: #{arr}")
puts ("Selected array: #{selected}")


sectionBreak()


#Loops in Ruby
p "Loops in ruby"
sectionStart()

#for loop: for loops are most useful when working with Ranges and the range is well defined.
puts "for loop: "
p arr
for i in arr
    print i.to_s() + " "
end

#while loop: while loops are useful when a computation needs to be done in-definite number of times.
puts "\n\nwhile loop: "
i = 0
while i < arr.length
    print (arr[i].to_s() + " ")
    i+=1 #Incrementing OR changing the state of condition statement needs to be taken care since it might lead to infinite looping!
end

#'loop do': Its a special loop that doesn't have any conditional statement to check. You can only 'break' the loop by giving some codition 'inside the loop itself'
                    ###This was done on Day-5 actually, but placed in this section for relativity.
puts("\n\n 'loop do': ")
loop do
    print("Do you want to run the loop again (Y/N): ")
    input = gets.chomp.downcase
    break if(input != "y")
end

sectionBreak()

#Hash OR Dictionaries OR Maps
p "Hash OR Dictionary OR Map in ruby:"
sectionStart()
=begin
    Hashes are the key-value paired data-structures that helps to store a collection of data with an unique id to each entry in the collection.
    The keys of Hashes in Ruby can have Symbol data-type also. 'Symbol' is an advanced data-type in Ruby whose values stored using hashing technique.
    The key-set of a Hash in Ruby is allowed to have heterogenous keys.
    Hashes in Ruby are pretty much like Arrays but only allow index based insertion/deletion where 'keys' act as the indices.
    They are Iterable and hence .each() and .select() methods can be applied easily on Hashes.
=end

#Sample Hash with heterogenous key set
my_hash = {1=>2, 2=>3, 3.4=>4, :a=>9, "h"=>4}
puts "Initial my_hash: #{my_hash}"

#Adding new pair
my_hash[:p] = 4
puts "\nAfter 'my_hash[:p] = 4': #{my_hash}\n\n"

#Usage of Hash.each()
my_hash.each{|k, v| puts "key = #{k}, value = #{v}"}
puts
my_hash.each{|k, v| puts "#{k} is a #{k.class} "}

#Hash.keys: returns an array of all the keys in Hash
puts "\nHash.keys: #{my_hash.keys}"

#Hash.values: returns ans array of the values in Hash
puts "\nHash.values: #{my_hash.values}"

#Hash.invert(): Inverting key-value pairs. Data loss may occur.
puts "\nHash.invert: #{my_hash.invert}" # {2=>1, 3=>2, 4=>:p, 9=>:a}, Notice key-3.4 and key-"h" has been lost

#Hash.delete(key) : Deletes the entry with 'key' as key and returns it. Returns nil if key does not exist.
puts "\nHash.delete(key): key = 'h' here! Deleted value: #{my_hash.delete("h")}. my_hash now: #{my_hash}"

#Usage of Hash.select()
puts "\nFiltering entries whose keys are either Integer OR Symbol using 'Hash.select()': #{my_hash.select{|k, v| k.is_a?(Integer) || k.is_a?(Symbol)}}"

sectionBreak()

###Day-5: 18/09/2020, Fri.
    #Done 'loop do' for Day-5

###Day-6: 19/09/2020, Sat.

#Object Oriented Programming(OOP):
puts("Object Oriented Programming(OOP): ")
sectionStart

=begin
    Everything in world can be treated as an Object and OOP is a programming paradigm that helps to implement real-world structure in our code.
    Let's consider a student for eaxmple. Every student has some properties/attributes like 'Roll number', 'ID', 'Name', 'Division', etc. These attributes of a class are
    called 'instance variables'. The 'instance variables' are common for all the 'objects/instances'(students) of a 'Class'(Student) and can be used as a 'blue-print' for preparing some data like 'student-details'. This data can be used later in many ways.
    In OOPs, this 'blue-print' is referred by the term "Class". This "blue-print/Class" can be used to create/add a new entry to the list 'student-detail'. Every entry
    in the 'student-details' represent individual students. In OOPs these entries are referred to as "Instances/Objects" of class "Student".

    Said this, let's understand how OOPs helps in terms of its features, widely known as "OOPs concepts". There are 4 major features/concepts upon which OOP paradigm is built. They are:

    01) Inheritance: Going by the apt meaning, 'Inheritance' means 'a child aquiring the features of his parents'. In programming, thousands of lines of code is written just to add one/few functionality
            for the application. So, inorder to build the entire application it would be too hectic for the developer. One way to tackle this problem is 'reusing' the code for similar 'functionalities'.
            This improves the structure of code, removes redundancy and saves the time developer as well.\
    
    02) Encapsulation & Decapsulation: Encapsulation is a process of hiding the implementation of our core logic. Think of a banking application. If the core logic of transferring money from one account to another account
            is not hidden, no one would be using the application. But wait, if everything is hidden how can one use the feature itself. Here comes into play, the concept of Decapsulation. Decapsulation is a
            process of unhiding/giving limited access to the application data. You can actually Hide/Unhide the data by binding the data with their accessor methods.
            In OOPs these accessor methods are referred to as 'getters' and 'setters'.

    03) Polymorphism: Polymorphism means taking/mimicking multiple forms/features. Let's us consider an act of running. Running in a 100 meter race will have different definition from running in a marathon. In cricket it takes a totally different meaning.
            If you want to program  the above concept, you can do it defining three different methods/procedures and making different function calls for each. But, the smarter way is to declare one method for all and implementing 3 definitions for one method
            that performs the action depending on the scenario. You can give the scenario as an argument to the function. This will reduce the number of your function calls, and keeps away the programmer from having to remember multiple function names.
            
    04) Abstraction: Abstract in simple terms is 'incomplete'. Sometimes you might want a 'template' for your Class 'blue-print' itself. Programmatically thsi can be achived by using/defining "Abstract Classes". Abstract Classes are nothing but the Classes that have
            method signature defined but not the implementation. That makes the classes 'incomplete' or in OOPs terms 'Abstract' and these methods are called 'abstract methods'.

    
    These are the main pillars of OOPs. To see how OOPs is implemented in Ruby, refer to 'OOPs/' folder in the current directory.

    **The OOPs concept remain same for all the programming languages, provided they follow  OOP paradigm.
=end
sectionBreak


#Day-7: 20/09/20, Sun.
# bcrypt() OR 'BCrypt::Password' gem in Ruby: 
=begin
   'BCrypt::Password' is an advanced hasshing technique used to store the passwords. There are many other hashing techniques like 'MD5', but ruby prefers 'bcrypt()' OR 'BCrypt::Password'.
   The same technique is used by OpenBSD systems also.
   
   #Creating a hash:
   #BCrypt::Password.create('password'): Everytime this statement is run, a new hash will be generated for the argument passed('password'). Even if the same argument is passed each time.
        # ':salt'  :Above is because of ':salt' that's used at the time of creating a hash value for the password. It generates different hash values for same password.

   #Creating a hash constant to compare:
   #BCrypt::Password.new('hashed value'): Everytime this statement is run for any 'hashed value' of SAME password, a constant hash-string will be generated.

   
    **This is just an itro to bcrypt().
    Must reads:
        https://www.rubydoc.info/gems/bcrypt-ruby/3.1.5
        https://www.rubydoc.info/github/codahale/bcrypt-ruby/BCrypt/Password
        https://www.rubydoc.info/github/codahale/bcrypt-ruby
=end

#bcrypt(): sample usage
puts "'bcrypt()' OR 'BCrypt::Password':"
sectionStart

require 'bcrypt'

    my_password = BCrypt::Password.create("my password",:salt => 6)
    puts my_password  #=> "$2a$10$vI8aWBnW3fID.ZQ4/zo1G.q1lRps.9cGLcZEiGDMVr5yUP1KUOYTa"
    
    my_password.version              #=> "2a"
    my_password.cost                 #=> 10
    my_password == "my password"     #=> true
    my_password == "not my password" #=> false

    my_password = BCrypt::Password.new("$2a$10$vI8aWBnW3fID.ZQ4/zo1G.q1lRps.9cGLcZEiGDMVr5yUP1KUOYTa")
    
    #new_password = BCrypt::Password.new("my password")   //Threows 'invalid hash' error
    #BCrypt.Password.new("hash_arg"): 'hash_arg' SHOULD be a hashed password value from 'BCrypt::Password.create("the password").
    #puts new_password

    my_password == "my password"     #=> true
    my_password == "not my password" #=> false

    puts(my_password)

    sectionBreak

# Day-8: 21/09/20, Mon. //Worked in './OOPs/crud.rb'

#mixins: 'mixins' are the features of external modules that are 'included' within a class. See in './OOPs/students.rb'


###Day-9: 22/09/20, Tue. //Created MVC '../MVC'. Installed Rails6 and Rails5 and created a project for each.