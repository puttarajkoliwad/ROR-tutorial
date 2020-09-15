#Ruby is an 'Interpreted' programming laguage used extensiely in web-dev. Built like python.
#This is a single line comment

=begin
    This ia a comment as well!.
    But a multiline comment enclosed between '=begin' and '=end' keywords.
    They will only dereferenced from column1 only!
=end

#Data types in ruby: 1) String, 2) Integer 3) Float, etc.
#But variables in ruby are 'dynamically declared!'

### DAY-2
#Printing to output
    #p: 'p' is println in ruby. Returns the argument itself! Adds a new line. Doesn't exclude double quotation("").
    #puts(put string): 'puts' is another println in ruby but, it returns 'nil'. Adds a new line
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
=end


### DAY-3
