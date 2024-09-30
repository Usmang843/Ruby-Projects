

# here is the output
# puts 'Hello World' # pipes to the console

# Below is the function definition

def myFirstMth # 'def'ining
  # puts "Hello this is the first function i'm defining in ruby"
end # ending of our definition

# myFirstMth() # or just myFirstMth without paranthesis
# myFirstMth because it doesn't accept any argument

=begin
 # Below is the casting
puts 123.450.to_f # return 123.45
puts "Usman".to_f # return 0.0
puts Float("Usman") # return error invalid argument
puts Float(13.230) # return 13.23
puts 123.450.to_s # return 123.45puts
puts 123.to_s # return 123
puts "123.45".to_s # return 123.45
puts String(13) # 13
puts String("usman123") # usman123
puts 123.450.to_i # return 123
puts "usman-123".to_i # return 0
puts "123-usman".to_i # return 123
puts Integer(402.32) # 402
Integer(usman) # error
integer/integer return integer only , # float/integer || integer/float returns float -> solve this => fdiv floatting point divide
a += 1 unless a = 5

=end

# defining class

class Foo
    def **(x) # here ** is the function name
    puts "Raising to the power of #{x ** 2}"
    end

    def <<(y) # << is the function name
    puts "Shifting left by #{y}"
    puts  "#{Foo.new ** 2}" # calls a function in another function create the extra line space
    end
    def !  # ! is the function name
      puts "Boolean negation"
      puts "#{Foo.new << 2}"
    end
    def [](x)
    puts "bracket lookup argument value #{x}"
    # puts "#{Foo.new !}" if there is a name of function with no parameter then use operator or function name before
    puts "#{!Foo.new}"
    end
    def []= (x,y)
      puts "bracket set argument function value #{x} is #{y}"
      puts "#{Foo.new[2]}"
    end
    def +@
        puts "unary plus operator"
        # puts "#{Foo.new[2, 4]}" # cannot pass more than one statement
    end
    def -@
        puts "unary minus operator"
    end
    def ==(x)
        puts "checking the equality with #{x} returning comparison #{x}"
        true
    end
    def != (x)
        puts "checking the inequality with #{x} returning false"
        false
    end
end

=begin
f = Foo.new
puts f #<Foo:0x00007371794c5938>
Foo.new ** 2
Foo.new << 2
!Foo.new
Foo.new[2]
Foo.new[2] = 4
f ** 2  # Raising to the power of 2
f << 2 # Shifting left by 2
!f # Boolean negation
f[:name] = "usman" # can pass the string by :
f[:age] = 23 # can assign the second argument
f[:name] = 2 # can pass the string by :
f[2] # can pass the number without colon
f["usman"] # can pass the number without colon
+f
-f
x = (f == 40) # == is calling function return false
x = (f != 40) # == is calling function return true
puts f == 40
=end

=begin
# bad practice
puts "#{(1..5) === 3}" # true ->inclusive range
puts "#{(1..5) === 6}" #  false -> not included in inclusive range
puts "#{(1...5) === 6}" # false
puts "#{/ell/ === "Hello"}" # true
puts "#{Integer === "40"}" # false 40 is the string

# classes that override ==== >) Array (==), Date(==), Module(is_a?), Object (==), Range (include?), Regexp (=~), String (==)

# Good practice
puts "#{(1..5).include?3}" # true
puts "#{(1..5).include?6}" # false
puts "#{(1...5).include?6}" # false
puts "#{/ell/ =~ 'Hello'}" # Regexp gives one
puts "#{/ell/ =~ 'Foobar'}" # Regexp gives nothing an empty
puts "#{40.is_a?(Integer)}" # true
puts "#{"40".is_a?(String)}" # true

=end

=begin
# we are using && operator for condition check but in ruby
# house && house.address && house.address.street_name -) ruby differ with -) house&.address&.street_name
# The safe navigation operator doesn't have exactly the same behavior as the chained conditional.
x = 4
y = 4
z = x + y
i, j = 4, 2 # Parallel Assignment
i += j # i = i + j
# can swap the value -) i, j = j, i # i = 2, j = 4
# there are all the Abbreviated operators we use -) +=, -=, *=, /=, %=, **=
# Comparison operator -) ==, !=, >, <, >=, <=, <=> (0 -) left = right, 1 -) left > right, -1 -) left < right )
puts "Sum of #{x} and #{y} is = #{z}"
puts "Sum of #{i} and #{j} is = #{i + j}"
puts "Using the += operator value is #{i}"
puts "Using the  == comparison operator is #{x == y}"

=end

=begin
# A variable will be considered a class variable when prefixed with @@
class Dinasour
    @@classification = "Like a Reptile, but Like a bird"

    def self.classification # like constructor defining the local variable of class scope
        @@classification = "assigning or initializing the variable in constructor like method"

    end
    def classification
        p "Accessing the function through object value of variable is = #{@@classification}"
    end
    # @@classification = "Like a Reptile, but Like a bird" it can be declared anywhere in the class -) class wide scope
end
# shared between related classes and can be overwritten from a child class
# Local variables (unlike the other variable classes) do not have any prefix

class TRx < Dinasour
    @@classification = "assigning a value in the child class" # assigned in the child will override the parent class value
end

dino = Dinasour.new # creating an object
dino.classification # access function with object
# puts "#{Dinasour.classification}" # access the constructor like function which is self by class itself
# puts "#{TRx.classification}"

=end

=begin
#  declare a variable inside a do ... end block or wrapped in curly braces {} it will be local and scoped to the block it has been declared in.
# if or case blocks can be used in the parent-scope:
# local variables can not be used outside of its block of declaration, it will be passed down to blocks in loop
# But not to method / class / module definitions
# Global variables have a global scope and hence, can be used everywhere.
#  calling an "undefined" global variable will return nil instead of raising an error.

2.times do |x|
    local_var = x + 1
    # p local_var
end

if true
    usable = "yay"
end
# p usable

my_variable = "usman" # local variable can access in loop but not in methods / class / module
$global_variable = "I'm a global variable" # can access everywhere
my_variable.split("").each_with_index do |char, i| # can be any name parameter which we use in scope of loop
    puts "The character in string "#{my_variable}' at index #{i} is #{char}"
end

def some_method
    # puts "you can't use the local variable in here, see? #{my_variable}" # error accessing the local variable outside of this function
end
# some_method

["darkens"].each do |my_variable|
  p my_variable # not print this variable
end
p my_variable # without overwriting them

=end

=begin
# Instance variables have an object wide scope, they can be declared anywhere in the object

class Dinosaur
    @base_sound = "rawrr" # instance variable

    def self.base_sound # constructor with defining value
        @base_sound
    end
    def initialize(sound = nil)
        @sound = sound || self.class.base_sound
    end
    def speak
        @sound
    end
    def try_to_speak
        @base_sound
    end
    def count_and_store_sound_length
        @sound.chars.each_with_index do |char, i|
            @sound_length = i + 1
            p "#{char}: #{sound_length}"
        end
    end
    def sound_length
        @sound_length
    end
end

dino_1 = Dinosaur.new
dino_2 = Dinosaur.new "grrr" # passing the value in the class constructor
p Dinosaur.base_sound # rawrr
p dino_2.speak # grrr
p dino_1.try_to_speak # returns nil -)  instance variable declared on class level can not be accessed on object level
p dino_1.speak
dino_1.count_and_store_sound_length
p dino_1.sound_length
p dino_2.sound_length # nil -) Instance variables are not shared between instances of the same class

# create class level variables, that will not be overwritten by a child-class, since classes are also objects in Ruby

class DuckDuckDinosaur < Dinosaur
    @base_sound = "quack quack"
end
duck_dino = DuckDuckDinosaur.new
p duck_dino.speak
p DuckDuckDinosaur.base_sound
p Dinosaur.base_sound

=end

=begin
# Environment Variables
# will retrieve my home path
p ENV['HOME'] #  "/Users/username"
# will try retrieve the 'FOO' environment variable. If failed, will get 'bar'
p ENV.fetch('FOO', 'bar')

=end

=begin
#Constant name start with capital letter
# Constants, class and module are also constant, Constants cannot be defined in methods
MY_CONSTANT = "Hello, world" # constant
Constant = 'This is also constant' # constant
my_variable = "Hello, venus" # not constant

# Define and change constants in a class

class Message
    DEFAULT_MESSAGE = "Hello, world"
    def speak(message = nil)
        if message
            puts message
        else
            puts DEFAULT_MESSAGE
        end
    end
end

# Message::DEFAULT_MESSAGE = "New Value of constant" # warning
Message::DEFAULT_MESSAGE[0] = '' # assigning a value to index
# p Message::DEFAULT_MESSAGE
=end

=begin
puts __FILE__
puts __dir__ # is equal to File.dirname(File.realpath(__FILE__))
puts $$ # process number of the Ruby running this script
# ARGV  or $* -) Command line arguments given for the script. The options for Ruby interpreter are already removed
# STDIN -) standard input, STDOUT -) standard output, STDERR -) standard error, ENV -) hash-like object contains current environment variables.
# $stdin -) current standard input, $stdout -) standard output, $stderr -) current standard error output,
=end

=begin
# Arrays -) Arrays of strings can be created using ruby's percent string syntax
# %w() you may use other matching pairs of delimiters: %w{...}, %w[...] or %w<...>.
# may use arbitrary non-alphanumeric delimiters, such as: %w!...!, %w#...# or %w@...@.
# Arrays can contain any kind of objects in any combination with no restrictions on type:
# Multiple words can be interpreted by escaping the space with a \
p %w(Colorado California New\ York) # ["Colorado", "California", "New York"]
array1 = %w(one two three four)
# following equivalent arrayfour
array2 = ['one', 'two', 'three', 'four']
p array1
p array2
p array1 === array2 # return true because both are same with different syntax only
# %W can be used instead of %w to incorporate string interpolation
var = 'usman'
p %w(#{var}) # ["\#{var}"]
p %W(#{var}) # ["usman"]

p Array([]) # creating an empty array []
p Array.new # creating an empty array []
p Array.new 3 #creating an array with 3 values nil
p Array.new 3, :x  # creating an array w}ith 3 values x

p Array.new (3) { |i| i.to_s} # ["0", "1", "2"] #
{ |i| i.to_s }: The block takes one argument, i, which represents the index of the element being created in the array.
p Array.new (4) { |i| i.to_i} # [0, 1, 2, 3]

a = Array.new 3, "X" # Not recommended.
a[1].replace "C"
puts a # retrun the element in the array separtely
p a  # ["C", "C", "C"]
b = Array.new(3) { "X" } # The recommended way.
b[1].replace "C"
p b # ["X", "C", "X"]

=end
=begin
# Arrays of symbols
array = %i(one two three)
p array # [:one, :two, :three]
# %i(...), you may use %i{...} or %i[...] or %i!...!

a = 'hello'
b = 'goodbye'
p array_one = %I(#{a} #{b} world)
p array_two = %i(#{a} #{b} world)

=end

# Manipulation of Arrays

=begin
# adding element in the array
a = [1,2,3, 4]
a << 5
p a # [1, 2, 3, 4, 5]
a.push(6)
p a # [1, 2, 3, 4, 5, 6]
a.unshift(0)
p a # [0, 1, 2, 3, 4, 5, 6]
a << [4, 5]
p a #  [0, 1, 2, 3, 4, 5, 6, [4, 5]]

# removing element from the array
a.pop # remove element from the end of the array
p a
a.shift # remove element from the start of the array
p a
a.delete(6) # find and remove the element
p a
# p a.delete(1) # if there is not an element in the array it returns nil
a.delete_at(0) # delete at index 4
p a
a = a - [3] # remove all the index value === 3
p a
a = a - [3,4,6] # remove the all the index value === 3 || value === 4 || value === 6 if the value doesn't exist it does nothing
p a

=end

# combining of Arrays
=begin
a = [1,2,3]
b = [2, 3, 4,5,6]
c = a + b #  c = [1, 2, 3, 2, 3, 4, 5, 6]
c = a.concat(b)
p a # a = [1, 2, 3, 2, 3, 4, 5, 6]
p c # c = [1, 2, 3, 2, 3, 4, 5, 6]
c = b.concat(a)
p b # b = [2, 3, 4, 5, 6, 1, 2, 3, 2, 3, 4, 5, 6]
p c # c = [2, 3, 4, 5, 6, 1, 2, 3, 2, 3, 4, 5, 6]
c = a - b # remove all the elements in a from matching b element -) c = []
c = b - a # remove all the elements in b from matching a elements -) c = []
c = a | b # add the items but not duplicated items in the array
p c # [1, 2, 3, 4, 5, 6]
c = b | a # add the items but not duplicated items in the array
p c # [2, 3, 4, 5, 6, 1]
c = a & b # return the matching index value
p c # [1, 2, 3, 4, 5, 6]
c = b & a # return the matching index value
p c # [2,3,4,5,6,1]
c = c * 2 # duplicate the array element and assign [2, 3, 4, 5, 6, 1, 2, 3, 4, 5, 6, 1]
p c

=end

# Accessing element
=begin
x = [1,2,4,6]
p x[0] # 1
p x[1..2] # => [2, 4] (indices from 1 to 2, including the 2)
p x[1...2] # => [2] (indices from 1 to 2, excluding the 2)
p x[-1] # 6 return the last element end of the array
p x[1...-1] # [2,4]
p x.first # 1
p x.first(2) # [1,2]
p x.last # 6
p x.last(3) # [2,4,6]
p x.sample # return random value from the array
p x.sample(2) # return random value from the array

=end

# Decomposition
=begin
arr = [1, 2, 3]
a = arr[0]
b = arr[1]
c = arr[2]
# --- or, the same
a, b, c = arr # a = 1; b = 2; c = 3;
a, b, c, d = arr # a = 1; b = 2; c = 3; d = nil

# splat operator (*) puts into it an array of all the elements that haven't been captured by other variables.
a, *b = arr # a = 1; b = [2, 3]
a, *b, c = arr # a = 1; b = [2]; c = 3
a, b, c, *d = arr # a = 1; b = 2; c = 3; d = []
# a, *b, *c = arr # SyntaxError: unexpected *
arr = [1, [2, 3, 4], 5, 6]
a, (b, *c), *d = arr # a = 1; b = 2; c = [3, 4]; d = [5, 6]

class Foo
    def to_ary
        [1, 2]
    end
end
a, b = Foo.new # a = 1; b = 2
1.respond_to?(:to_ary) # => false
a, b = 1 # a = 1; b = nil

a, b = [1, 2]
(a, b) = [1, 2] # the same thing

a, b = [1, 2]
a, b = 1, 2 # exactly the same

=end

# Array Union, intersection and differences
=begin
x = [5, 5, 1, 3]
y = [5, 2, 4, 3]
p x | y # [5,1,3,2,4] # Union
p y | x # [5,2,4,3,1]
p x & y # [5, 3] # intersection
p x - y # [1]
p y - x # [2, 4] # differences
=end

# compact Remove all nil elements from an array with compact
# compact! are called on an array with no nil elements, these will return nil
=begin
array = [ 1, nil, 'hello', nil, '5', 33]
array.compact # [ 1, 'hello', '5', 33]
p array # [ 1, nil, 'hello', nil, '5', 33]
array = array.compact
p array # [ 1, 'hello', '5', 33]
array = array.compact
# p array # nil
p array.compact! # nil

=end

# permutation method, when called with a block yields a two dimensional array consisting of all ordered sequences of a collection of numbers.
=begin
a = [1,2,3]
p a.permutation #<Enumerator: [1,2,3]:permutation
p a.permutation(1).to_a # [[1],[2],[3]]
p a.permutation(2).to_a  # [[1,2],[1,3],[2,1],[2,3],[3,1],[3,2]]
p a.permutation.to_a  # [[1,2,3],[1,3,2],[2,1,3],[2,3,1],[3,1,2],[3,2,1]]
p a.permutation(4).to_a # [] -> No permutations of length 4

# when called with a block yields a two-dimensional array consisting of # all sequences of a collection of numbers. Unlike permutation, order is disregarded in combinations.
# For example, # [1,2,3] is the same as [3,2,1]
p a.combination(1) #<Enumerator: [1,2,3]:combination
p a.combination(1).to_a # [[1],[2],[3]]
p a.combination(2).to_a # [[1, 2], [1, 3], [2, 3]]
p a.combination(3).to_a # [[1,2,3]]
p a.combination(4).to_a # [] -> No combinations of length 4

p a.combination(3).to_a.length  # 1
p a.repeated_combination(3).to_a.length #10
p a.combination(5).to_a.length # 0
p a.repeated_combination(5).to_a.length # 21

=end

# inject and reducer -) Inject and reduce are different names for the same thing
# Inject takes a two argument function and applies that to all of the pairs of elements in the Array
=begin
a = [1,2,3]
p a.reduce(0) {|a,b| a + b} # 6
# we omit the first argument, it will set a to being the first element in the list
p a.reduce {|a,b| a + b} # 6
# instead of passing a block with a function, we can pass a named function as a symbol,
p a.reduce(0, :+) # 6
p a.inject(:+) # 6
=end

# filtered Arrays
=begin
a = [1,2,3,4,5,6,7,8]
p a.select { |n| n >= 4 } # [4,5,6,7,8]
p a.reject {|n| n >= 4} # [1,2,3]
p a.select { |n| n>4 }.reject { |n| n < 6} # [6, 7, 8]

=end

# map  -) creates an array by invoking a block on each element and collecting the results
=begin
a = [1,2,3,4]
p a.map { |n|  n * 4 } # [4,8,12,16]
# original array is not modified; a new array is returned containing the transformed values in the same order as the source values
# map! can be used if you want to modify the original array

# call to_i method on all elements
p %w(1 2 3 4 5 6 7 8 9 10).map(&:to_i) # [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
# using proc (lambda) on all elements
p %w(1 2 3 4 5 6 7 8 9 10).map(&->(i){ i.to_i * 2}) # [2, 4, 6, 8, 10, 12, 14, 16, 18, 20]

# (*) operator can be used to unpack variables and arrays so that they can be passed as individual arguments to a method.
def wrap_in_array(value)
    p [*value]
end
wrap_in_array(1) # [1]
wrap_in_array([1, 2, 3]) # [1, 2, 3]
wrap_in_array(nil) # []

def list(*values)
    values.each do |value|
        # do something with value
        puts value
    end
end

list(100) # 100
list ([100, 200, 300, 400])
list (nil) # empty
=end

# two dimensional array
=begin
array = Array.new(5) {Array.new(5) {0}}
p array
x = 0
array[0][0] = 2
(0...5).each do |i|
    (0...5).each do |j|
        array[i][j] = (j % 4) + 1
    end
end
p array

# Turn multi-dimensional array into a onedimensional (flattened) array
a = [1, 2, [[3, 4], [5]], 6]
p a.flatten # [1,2,3,4,5,6]
p a # [1, 2, [[3, 4], [5]], 6]
# Get unique array elements
a = [1, 1, 2, 3, 4, 4, 5]
p a.uniq! # [1,2,3,4,5]
p a
=end

# create array of numbers
=begin
number = Array(1...11) # [1,2,3,4,5,6,7,8,9,10]
p number
number2 = (1...11).to_a # [1,2,3,4,5,6,7,8,9,10]
p number2

odd_numbers = (1..10).step(2).to_a
p odd_numbers # [1, 3, 5, 7, 9]
even_numbers = 2.step(20, 2).to_a
p even_numbers # [2, 4, 6, 8, 10]
squared_numbers = (1..10).map { |n| n * n }
p squared_numbers # [1, 4, 9, 16, 25, 36, 49, 64, 81, 100]
arr = (1..10).to_a
p arr # [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
arr = [*'A'...'E']
p arr # ["A", "B", "C", "D"]

=end

# cast array from any object
=begin
p Array('something') #=> ["something"]
p Array([2, 1, 5]) # [2, 1, 5]
p Array(1) # [1]
p Array(2..4) # [2, 3, 4]
p Array([]) # []
p Array(nil) # []

def join_as_string(arg)
    if arg.instance_of?(Array)
        arg.join(',')
    elsif arg.instance_of?(Range)
        arg.to_a.join(',')
    else
        arg.to_s
    end
end
p join_as_string('something') # "something"
p join_as_string([2, 1, 5]) # "2,1,5"
p join_as_string(1) # "1"
p join_as_string(2..4) # "2,3,4"
p join_as_string([]) # ""
p join_as_string(nil)

def join_as_Array (arg)
    Array(arg)
end
p join_as_Array('something') # "something"
p join_as_Array([2, 1, 5]) # [2,1,5]
p join_as_Array(1) # [1]
p join_as_Array(2..4) # [2,3,4]
p join_as_Array([]) # []
p join_as_Array(nil) # []

=end

# multidimensional array
=begin
my_array = [1, 1, 2, 3, 5, 8, 13]
p my_array # [1, 1, 2, 3, 5, 8, 13]
# two dimensional array
my_array1 = [
    [1, 1, 2, 3, 5, 8, 13],
    [1, 4, 9, 16, 25, 36, 49, 64, 81],
    [2, 3, 5, 7, 11, 13, 17]
]
p my_array1 # [ [1, 1, 2, 3, 5, 8, 13], [1, 4, 9, 16, 25, 36, 49, 64, 81], [2, 3, 5, 7, 11, 13, 17]]
p my_array1[0][1] # 1
# three dimensional array
my_array2 = [
    [
        [1, 1, 2, 3, 5, 8, 13],
        [1, 4, 9, 16, 25, 36, 49, 64, 81],
        [2, 3, 5, 7, 11, 13, 17]
    ],
    [
        ['a', 'b', 'c', 'd', 'e'],
        ['z', 'y', 'x', 'w', 'v']
    ],
    [
        []
    ]
]
p my_array2[1][0][3] # "d"
p my_array2.flatten.uniq # [1, 2, 3, 5, 8, 13, 4, 9, 16, 25, 36, 49, 64, 81, 7, 11, 17, "a", "b", "c", "d", "e", "z", "y", "x", "w", "v"]

=end

# String
# Single-quoted strings don't support interpolation
# Double-quoted strings also support the entire set of escape sequences including "\n", "\t"...
# Double-quoted strings support interpolation
=begin
puts 'Now is #{Time.now}' # -) Now is #{Time.now}
puts 'Now is #{Time.now}' # -) Now is 2016-07-21 12:43:04 +0200
str = 'A String' # || %(A String) || %{A String} || %<A String> || %|A String| || %!A String!
p str
puts %q(Now is #{Time.now}) # -) # Now is #{Time.now}
puts %Q(Now is #{Time.now}) # -) # Now is 2016-07-21 12:47:45 +0200


# Case Manipulation -) do not modify the original receiver
str2 = "stRing"
p str2.upcase #  "STRING"
p str2.downcase #  "string"
p str2.swapcase #  "STrING"
p str2.capitalize #  "String"
p str2 # "stRing"
p str2.upcase! # "STRING" -) modify original receiver
p str2

# string concatenation
s1 = "Hello"
s2 = " "
s3 = "World"
puts s1 + s2 + s3 # Hello World
puts s1 << s2 << s3 # Hello World

# Positioning String -) ljust # left-justify -) rjust # right-justify -) center # center
str3 = "abcd"
p str3.ljust(10) # "abcd      "
p str3.rjust(10) # "      abcd"
p str3.center(10) # "   abcd   "
=end

# Splititng a String
=begin
str = "usman, Ur, Rehman . Rasheed"
p str.split(',') # ["usman ", " Ur", " Rehman . Rasheed"] -) string to array
p str.split('.') # ["usman , Ur, Rehman"]
p str.split() # ["usman","Ur,", "Rehman", ".", "Rasheed"] # delimiter is optional, by default a string is split on whitespace

p str.start_with?("usman") # true
p str.index("usman").zero? # true
p str.end_with?("Rasheed") # true

arr = [1,2,3,4]
p arr.join(",") # "1,2,3,4" -) array to string

# String Substitution %s
p "This is %s" % "usman" # "This is usman"
p "%s %s %s" % ["usman", "ur", "rehman"] # "usman ur rehman"
p "%{name} == %{name}" % {:name => "usman" } # "name == usman"
=end

# Multiline String
=begin
address = "Four score and seven years ago our fathers brought forth on this
continent, a new nation, conceived in Liberty, and dedicated to the
proposition that all men are created equal."
p address # oneline string

# multiline string -) <<-name_of_string text in the string name_of_string

puts <<-MultiString
 Once upon a midnight dreary, while I pondered, weak and weary,
 Over many a quaint and curious volume of forgotten lore—
 While I nodded, nearly napping, suddenly there came a tapping,
 As of some one gently rapping, rapping at my chamber door.
 "'Tis some visitor," I muttered, "tapping at my chamber door—
 Only this and nothing more."
MultiString
=end

# String character replacement
=begin
a = "usman ur rehman"
p a.tr('u', 'o') # return a copy of string with replacement
p a.sub('u', 'o')  # osman ur rehman -) first occurrence of a pattern
p a.gsub('u', 'o') # osman or rehman -) replace all occurrences of a pattern

# understanding the data in the string
p a.bytes # [117, 115, 109, 97, 110, 32, 117, 114, 32, 114, 101, 104, 109, 97, 110]
p a.encoding.name

# Date Time from string
t = Time.now
p t
=end

# Symbol can't be changeable  || string can be changeable
# Converting a String to Symbol
=begin
s = "string"
s = s.to_sym # :string -) converting string to symbol
p s
# Converting a Symbol to String
s = s.to_s # "string" -) converting symbol to string
p s
=end

# Comparable
=begin
class Rectangle
    include Comparable
    def initialize(a, b)
        @a = a
        @b = b
    end
    def area
        @a * @b
    end
    def <=>(other)
        area <=> other.area
    end
end
r1 = Rectangle.new(2, 2)
r2 = Rectangle.new(4, 4)
r3 = Rectangle.new(3, 3)
p r2 >= r1 # => true
p r2.between? r1, r3 # => false  -) compares values
p r3.between? r1, r2 # => true

=end

# control flow
=begin
result = ["heads", "tails"].sample # result = [:heads, :tails].sample
if result == "heads"
    puts 'The coin-toss came up "heads"'
else
    puts 'The coin-toss came up "tails"'
end

x = 6
case x
when 1,2,3,4 then puts "1, 2, 3 or 4"
when 10 then puts "10"
else puts "Some other number"
end

puts "x is less than 5" if x < 5
puts "x is greater than 5" if x > 5

str = "goole"
case str
when /oo/
    puts "word contains oo"
end

num = 47
case num
when -> (n) { n.even? or n < 0 }
    puts "even or less than zero"
when -> (n) {n.odd? or n > 0}
    puts "odd or greater than zero"
end

description = case 16
when 13..19 then "teenager"
              else ""
              end
p description

def check_truthy(var_name, var)
    is_truthy = var ? "truthy" : "falsy"
    puts "#{var_name} is #{is_truthy}"
end
check_truthy("false", false)
check_truthy("nil", nil)
check_truthy("0", 0)
check_truthy("empty string", "")
check_truthy("\\n", "\n")
check_truthy("empty array", [])
check_truthy("empty hash", {})
=end

# while or until
=begin
x = 1
n = 2
while x <= 10 # -) while loop executes the block while the given condition is met
    puts "#{n} * #{x} = #{n * x}"
    x += 1
end

until x === 20 # -) until loop executes the block while the conditional is false
    puts "#{n} * #{x} = #{n * x}"
    x += 1
end

=end

# flip-flop operator inclusive
=begin
x = [2, 2, 1, 6, 3, 4, 5, 1]
selected_elements = x.select do |e|
  (2..4).include?(e)
end
p selected_elements

=end

# or-Equa -) ||=

# throw, catch
=begin
catch(:out) do
    catch(:nested) do
        puts "nested"
    end
    puts "before"
    throw :out
    puts "will not be executed"
end
puts "after"

=end

# break, next and redo
=begin
actions = %w(run jump swim exit macarena)
index = 0
while index < actions.length
    action = actions[index]
    index += 1
    next if action == "exit" # next statement will return to the top of the block immediately, and proceed with the next iteration
    break if action == "exit" # break statement will exit the block immediately.
    puts "Currently doing this action: #{action}"
end

actions2 = %w(run jump swim sleep macarena)
index = 0
repeat_count = 0
while index < actions2.length
    action = actions2[index]
    puts "Currently doing this action: #{action}"
    if action == "sleep"
        repeat_count += 1
        redo if repeat_count < 4
    end
    index += 1
end

=end

# Block result items
=begin
even_value = for value in [1, 2, 3, 4]
                 break value if value.even?
end
puts "The first even value is: #{even_value}"

def foo
    bar = [1, 2, 3, 4].map do |x|
        return 0 if x.even? # -) 0
        x
    end
    puts 'baz'
    bar
end
p foo # 0
def foo2
    bar = [1, 2, 3, 4].map do |x|
        next 0 if x.even? # -) [1,0,3,0]
        x
    end
    puts 'baz'
    bar
end
p foo2

# begin, end
# Begin blocks are not code blocks, like { ... } or do ... end; they cannot be passed to functions

circum ||=
    begin
        radius = 7
        tau = Math::PI * 2
        tau * radius # -) begin block will return the value of the last statement in the block
    end
p circum

=end

# The or operator has lower precedence than and. Similarly, || has lower precedence than &&. The symbol forms
# have higher precedence than the word forms
# Yielding to block -) You can send a block to your method and it can call that block multiple times.
=begin
def simple(arg1,arg2)
    puts "First we are here: #{arg1}"
    yield
    puts "Finally we are here: #{arg2}"
    yield
end
simple('start','end') { puts "Now we are inside the yield" }

def countdown(num)
    num.times do |i|
        yield(num-i)
    end
end

countdown(4) { |n| puts "Number is #{n}"}
=end

# Default parameter

def make_animal_sound1(sound = 'Cuack')
    puts sound
end
make_animal_sound1('Mooo') # Mooo
make_animal_sound1 # Cuack

def make_animal_sound2(sound = 'Cuack', volume = 11)
    puts sound
    puts volume
end
make_animal_sound2('Mooo', 10) # Mooo
make_animal_sound2('Mooo', 10) # Mooo 10 -)  it's not possible to supply the second without also supplying the first

# using positional parameter

def make_animal_sound3(sound: 'Cuack', volume: 11)
    puts sound
    puts volume
end
make_animal_sound3(volume: 12) # Cuack 12

# or hash parameter that stores

def make_animal_sound4(options = {})
    options[:sound] ||= 'Cuak'
    options[:volume] ||= 11

end
make_animal_sound4(:sound => 'Mooo') # Mooo

def welcome_guests(*guests)
    guests.each { |guest| puts "Welcome #{guest}!" }
end
welcome_guests('usman') # Welcome Tom!
welcome_guests('usman', 'ur', 'rehman')

def my_mix(name,valid=true, *opt)
    puts name
    puts valid
    puts opt
end
my_mix("usman") # usman true
my_mix("usman", false) # usman true
my_mix("usman", false, 2,4) # usman true [2,4]

