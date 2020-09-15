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
    String is one of the basic data-types in ruby.
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
=end