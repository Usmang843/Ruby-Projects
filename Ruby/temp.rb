


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
=begin
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
=end

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
=begin
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

# using a function as a block
x = [0, 1, 2]
p x.map {|i| i + 1}

def inc(num)
    num + 1
end
p x.map &method(:inc)

# Tuple argument

def feed( amount, (animal, food) )
    p "#{amount} #{animal}s chew some #{food}"
end
feed 3, [ 'rabbit', 'grass' ] # 3 rabbits chew some grass
=end

# ** opeartor
=begin
def options(required_key:, optional_key: nil, **other_options)
    other_options
end
my_hash = { foo: 'Foo!', bar: 'Bar!' }
p options(required_key: true, **my_hash) # { :foo => "Foo!", :bar => "Bar!" }
=end
# method definition are expression
=begin
class Class
    def logged(name)
        original_method = instance_method(name)
        define_method(name) do |*args|
            puts "Calling #{name} with #{args.inspect}."
            original_method.bind(self).call(*args)
            puts "Completed #{name}."
        end
    end
end
class Meal
    def initialize
        @food = []
    end
    logged def add(item)
        @food << item
    end
end
meal = Meal.new
meal.add "Coffee"
=end

# Hashes -) A Hash is a dictionary-like collection of unique keys and their values
# -)  A hash in Ruby is an object that implements a hash table, mapping keys to values
my_hash = {} # an empty hash
# while all syntax versions can be mixed, the following is discouraged because key would be of one type
=begin
grades = { 'Mark' => 15, 'Jimmy' => 10, 'Jack' => 10 , [2,4] => 6, :name => 'usman'}
p grades['Mark'] # 15
# Also keys can be of any type, including complex ones
p grades[[2,4]] # 6
# Symbols are commonly used as hash keys
p grades[:name]

# Setting default values

h = Hash.new(0)
h[:hi] = 1
puts h[:hi] #  1
puts h[:bye] # 0 returns default value instead of nil

# Use an empty array as the default value
authors1 = Hash.new([])
# Append a book title
p authors1[:homer] << 'The Odyssey' #  ['The Odyssey']
# All new keys map to a reference to the same array:
p authors1[:plato] #  ['The Odyssey']

# the Hash constructor accepts a block which is executed each time a new key is accessed
authors2 = Hash.new { [] }
# Note that we're using += instead of <<, see below
p authors2[:homer] += ['The Odyssey'] #  ['The Odyssey']
p authors2[:plato] #  []
p authors2 #  {:homer=>["The Odyssey"]}

authors3 = Hash.new { |hash, key| hash[key] = [] }
p authors3[:home] << 'The Lahore'
p authors3[:plato]

# Accessing value -) accessing a key which has not been added to the hash returns nil,
my_hash = { length: 4, width: 5 }
p my_hash[:length] # 4
p my_hash[:height] = 9 # 9
p my_hash # {:length=>4, :width=>5, :height=>9}

my_hash = { "name" => "user" }
p my_hash[:name] #  nil
p my_hash["name"] #  user

# -) situations where keys are expected or required to exist, hashes have a fetch method

# my_hash.fetch(:age) # error
# fetch accepts a default value as its second argument
p my_hash.fetch(:age, 23) # 23
p my_hash.fetch(:age) { 21 } # 21
my_hash.fetch(:age) do |k|
    puts "Could not find #{k}" # Could not find age
end
my_hash.store(:age, 23)
p my_hash # {"name"=>"user", :age=>23}

# get all values of a hash
p my_hash.values
# get all key of a hash
p my_hash.keys

h = { foo: {bar: {baz: 1}}}
p h.dig(:foo, :bar, :baz) # => 1
p h.dig(:foo, :zot, :xyz) # => nil
g = { foo: [10, 11, 12] }
p g.dig(:foo, 1) # 11

hash = Hash.new { |h, k| h[k] = Hash.new &h.default_proc }
hash[ :a ][ :b ][ :c ] = 3
p hash # {:a=>{:b=>{:c=>3}}}

# iterating over a hash -) Hash includes the Enumerable module -) Enumerable#each,
# Enumerable#each_pair, Enumerable#each_key, and Enumerable#each_value

h = { "first_name" => "John", "last_name" => "Doe" }
h.each do |key, value|
    puts "#{key} = #{value}"
end

# Filtering Hashes
# SELECT returns a new hash with key-value pairs for which the block evaluates to true.
{ :a => 1, :b => 2, :c => 3 }.select { |k, v| k != :a && v.even? } # {:b=>2}

#  not need the key or value in a filter block
{ :a => 1, :b => 2, :c => 3 }.select { |_, v| v.even? } # { :b => 2 }
{ :a => 1, :b => 2, :c => 3 }.select { |k, _| k == :c } # { :c => 3 }

# reject returns a new hash with key-value pairs for which the block evaluates to false
{ :a => 1, :b => 2, :c => 3 }.reject { |_, v| v.even? } # => { :a => 1, :c => 3 }
{ :a => 1, :b => 2, :c => 3 }.reject { |k, _| k == :b } # => { :a => 1, :c => 3 }

# Conversion to and from Array
{ :a => 1, :b => 2 }.to_a # => [[:a, 1], [:b, 2]]
[[:x, 3], [:y, 4]].to_h # => { :x => 3, :y => 4 }
Hash[:x, 1, :y, 2] # => { :x => 1, :y => 2 }
Hash[ [[:x, 3], [:y, 4]] ] # => { :x => 3, :y => 4 }
{ :a => 1, :b => 2 }.flatten # => [:a, 1, :b, 2]

p Hash[('a'..'z').collect{ |c| [c, c.upcase] }] # => { 'a' => 'A', 'b' => 'B', ... }

people = ['Alice', 'Bob', 'Eve']
height = [5.7, 6.0, 4.9]
p Hash[people.zip(height)] # => { 'Alice' => 5.7, 'Bob' => '6.0', 'Eve' => 4.9 }


fruit = { name: 'apple', color: 'green', shape: 'round' }
p fruit # {:name=>"apple", :color=>"green", :shape=>"round"}

new_fruit = fruit.inject({}) { |memo, (k,v)| memo[k.to_s] = v.upcase; memo }
p new_fruit # {"name"=>"APPLE", "color"=>"GREEN", "shape"=>"ROUND"}

new_fruit2 = fruit.each_with_object({}) { |(k,v), memo| memo[k.to_s] = v.upcase }
p new_fruit2 #  {"name"=>"APPLE", "color"=>"GREEN", "shape"=>"ROUND"}

new_fruit3 = Hash[fruit.map{ |k,v| [k.to_s, v.upcase] }]
p new_fruit3 #  {"name"=>"APPLE", "color"=>"GREEN", "shape"=>"ROUND"}

# Operation on Hashes -) Intersection, Union(merge)
hash1 = { :a => 1, :b => 2 }
hash2 = { :b => 2, :c => 3 }
hash1.select { |k, v| (hash2.include?(k) && hash2[k] == v) } # => { :b => 2 }

hash1 = { :a => 1, :b => 2 }
hash2 = { :b => 4, :c => 3 }
hash1.merge(hash2) # => { :a => 1, :b => 4, :c => 3 }
hash2.merge(hash1) # => { :b => 2, :c => 3, :a => 1 }

=end

# Blocks and Procs and Lamdas
=begin
# lambda using the arrow syntax -) ->
hello_world = -> { 'Hello World!' }
p hello_world[] # 'Hello World!'

# lambda using the arrow syntax accepting 1 argument
hello_world = ->(name) { "Hello #{name}!" }
p hello_world['usman']  # "Hello usman!"

the_thing = lambda do |magic, ohai, dere|
    puts "magic! #{magic}"
    puts "ohai #{dere}"
    puts "#{ohai} means hello"
end
the_thing.call(1, 2, 3) # magic! 1 ohai 3 2 means hello
the_thing[1,2,3] # magic! 1 ohai 3 2 means hello
the_thing. (1, 2, 3) # magic! 1 ohai 3 2 means hello
# the_thing[1,2,3,4] # error
# the_thing.call(1,2) # error

def try_proc # returning from a proc returns out of the enclosing scope
    x = Proc.new {
        return # Return from try_proc
    }
    x.call
    puts "After x.call" # this line is never reached
end

def try_lambda # returning from within a lambda returns from the lambda
    y = -> {
        return # return from y
    }
    y.call
    puts "After y.call" # this line is not skipped
end
try_proc # no output
try_lambda # After y.call
=end

# Ruby doesn't have functions, but methods
=begin
def double(n)
    n * 2
end
p double(2) # 4
def triple(n)
    lambda {3 * n}
end
p triple(2) # <Proc:0x00007304794576f8 (irb):6 (lambda)>
p triple(2).call # 6

# curry
add = -> (a, b) { a + b }
add_one = add.curry.(1) #  (λa.(λb.(a+b)))(1) which can be reduced to (λb.(1+b))
add_two = add.curry.(2)

=end

# Objects as block arguments to methods -) Putting a & (ampersand) in front of an argument will pass it as the method's block.
=begin
class Greeter
    def to_proc
        Proc.new do |item|
            puts "Hello, #{item}"
        end
    end
end
greet = Greeter.new
arr = ['world', 'life']
arr.each(&greet) #  Objects will be converted to a Proc using the to_proc method.

class Symbol
    def to_proc
        Proc.new do |receiver|
            receiver.send self
        end
    end
end

letter_counts = arr.map(&:length) # [5, 4]
p letter_counts

# converting to proc

p [ 'rabbit', 'grass' ].map( &:upcase ) # => ["RABBIT", "GRASS"]

output = method( :p )
[ 'rabbit', 'grass' ].map( &output ) # => "rabbit\ngrass"
=end

# Blocks
=begin
4.times {puts "Hello World"}
4.times {
    print "Hello "
    puts "usman"
} # not recommended -) braces have higher precedence than do..end
4.times do
    print "Hello "
    puts "usman"
end

# Yeilding -) yield is called without a block it will raise a LocalJumpError

def block_caller
    puts "some code"
    if block_given?
        yield # puts "My own block"
    else
        puts "block is not given"
    end
    puts "other code"
end
block_caller # the block is passed as an argument to the method.
block_caller { puts "My own block" } # the block is passed as an argument to the method.

def yield_n(n)
    p = yield n if block_given?
    p || n
end
yield_n(12) {|n| n + 7 } # 19
yield_n(4) # 4


my_variable = 8
3.times do |x|
    my_variable = x
    puts my_variable
end
puts my_variable
=end
# Each
=begin
# |i| this means that each element in the range is represented within the block by the identifier i
(1..10).each { |i| puts i.even? ? 'even' : 'odd' } # inline

(1..10).each do |i| # multiline
  if i.even?
    puts 'even'
  else puts 'odd'
  end
end

arr = [1,2,3,4]
puts arr.inspect # output is [1,2,3,4]
print "Reversed array elements["
arr.reverse_each do |val|
    print " #{val} " # output is 4 3 2 1
end
print "]\n"

# Implementation in a class

class NaturalNumbers
    include Enumerable
    def initialize(upper_limit)
        @upper_limit = upper_limit
    end
    def each(&block)
        0.upto(@upper_limit).each(&block)
    end
end
n = NaturalNumbers.new(4)
p n.reduce(:+) # => 10
p n.select(&:even?) # => [0, 2, 4]
p n.map { |number| number ** 2 } # => [0, 1, 4, 9, 16]
#

# iterating over complex objects
[[1, 2], [3, 4]].each { |(a, b)| p "a: #{ a }", "b: #{ b }" } #-) "a: 1" "b: 2" "a: 3" "b: 4"
{a: 1, b: 2, c: 3}.each { |pair| p "pair: #{ pair }" } #-) "pair: [:a, 1]" "pair: [:b, 2]" "pair: [:c, 3]"

=end

# for iterator


# (1..10).each { |i| puts i.even? ? 'even' : 'odd' } # inline

# (1..10).each do |i| # multiline
#   if i.even?
#     puts 'even'
#   else puts 'odd'
#   end
# end

# arr = [1,2,3,4]
# puts arr.inspect # output is [1,2,3,4]
# print "Reversed array elements["
# arr.reverse_each do |val|
#     print " #{val} " # output is 4 3 2 1
# end
# print "]\n"

# for iteration
=begin
for i in 4..13
    # puts "this is #{i}.th number"
end

names = ['usman', 'ur', 'rehman', 'rasheed']

for name in names
    # puts name
end

=end

# iteration with index
=begin
[2,3,4].map.with_index { |e, i| puts "Element of array number #{i} => #{e}" }
[2,3,4].map.with_index(1) { |e, i| puts "Element of array number #{i} => #{e}" } # optional parameter
[2,3,4].each_with_index { |e, i| puts "Element of array number #{i} => #{e}" } # diff with with_index is parameter not allowed

# Map

arr = [1, 2, 3]
arr.map { |i| i + 1 } # => [2, 3, 4]
arr # => [1, 2, 3]

=end

# Exception -) implicit exception handling like def, class, and module.
# A rescue clause is analogous to a catch block
=begin
begin
    # an execution that may fail
    rescue FirstError, SecondError => e # do something if a FirstError or SecondError occurs
    rescue => e # do something if a StandardError occurs
end
# If you failed to handle an exception, you can raise it any time in a rescue block.
begin
    #here goes your code
rescue => e
    #failed to handle
    raise e
end
# If you want to retry your begin block, call retry -) You can be stuck in a loop if you catch an exception in every retry
begin
    #here goes your code
rescue StandardError => e
    #for some reason you want to retry you code
    if retry_count < 5
        retry_count = retry_count + 1
        retry
    else
        #retry limit exceeds, do something else
    end
end
# Exception handling
begin
    # an execution that may fail
rescue
    # something to execute in case of failure
else
    # something to execute in case of success
ensure
    # something to always execute
end
# If you are inside a def, module or class block, there is no need to use the begin statement

def foo
 # ...
rescue
 # ...
end

# Raising an exception
def hello(subject)
    raise ArgumentError, "`subject` is missing" if subject.to_s.empty?
    puts "Hello #{subject}"
end

# hello # => ArgumentError: `subject` is missing
hello("usman") # => "Hello usman"
=end

# Adding information to custom exceptions
=begin
class CustomError < StandardError
    attr_reader :safe_to_retry
    def initialize(safe_to_retry = false, message = 'Something went wrong')
        @safe_to_retry = safe_to_retry
        super(message)
    end
end
raise CustomError.new(true)
begin
    # do stuff
rescue CustomError => e
    retry if e.safe_to_retry
end

=end

# Enumerator -) is an object that implements iteration in a controlled fashion
# custom enumerator
# The object enumerates values as needed.
# Execution of the loop is paused until the next value is requested by the owner of the object.
=begin
fibonacci = Enumerator.new do |yielder|
    a = b = 1
    loop do
        yielder << a
        a, b = b, a + b
    end
end

p fibonacci.take 10
# iteration method such as each is called without a block, an Enumerator should be returned
# enum_for -) existing method
def each
    return enum_for :each unless block_given? # <Enumerator: main:each>
    yield :x
    yield :y
    yield :z
end
p each { |x,y,z| puts x,y,z }
p each.drop(0).map(&:upcase).first

# Rewinding -) to restart the enumerator
N = Enumerator.new do |yielder|
    x = 0
    loop do
        yielder << x
        x += 1
    end
end
p N.next # 0
p N.next # 1
p N.next # 2
p N.next # 3
p N.next # 4
N.rewind
p N.next # 0

=end

# Enumerable module
# map method is the iterator and also return the copy of transformed collection
# each block will throw the array because this is just the iterator. Each iteration, does not actually alter each element in the iteration
=begin
CountriesName = ["India", "Canada", "America", "Iraq"]
for country in CountriesName # for loop
    # puts country
end
CountriesName.each do |country| # Each iterate over every single element of the array
    # puts country
end
CountriesName.each_with_index do |country, index| # provides the element for the current iteration and index of the element
    # puts country + " " + index.to_s
end
CountriesName.each_index do |index| #  index at which the element is placed
    # puts CountriesName[index]
end

newArr = []
newArr = CountriesName.map do |x| # fetch the transformed copy of the array
  x
end
p newArr
newArr1 = CountriesName.each do |x| # fetch the transformed copy of the array
    x.upcase
end
p newArr1 # is just an iterator, doesn't alter the element in the iteration

newArr2 = CountriesName.map {|x| x.upcase} # map can written as this statement
p newArr2 # map is an iterator with the copy of transformed collection

newArr2 = CountriesName.map! {|x| x.upcase} # returned the modified not the copy of the modified collection
p CountriesName

newArr = CountriesName.each_with_index.map do |value, index| # combining -)  each_with_index &&  map
    if ((index%2).eql?0)
        puts "Value is #{value} and the index is #{index}"
    end
end

MixedArray = [1, "India", 2, "Canada", "America", 4]
MixedArray.select do |v| # -) select method fetches the result based on satifying certain condition
  p (v.class).eql?Integer
end


arr = [1,2,3,4,5]
sum = arr.inject(0) do |sum, x| # -) reduces the collection to a certain final value.
  puts x
  sum = sum + x
end
p sum
=end

# Classes

class Customer
    attr_reader :name
    def initialize(name) # -) class can have only one constructor, that is a method called initialize
        @name = name.capitalize
    end
end
name1 = Customer.new('usman')
# p name1.name # 'Usman'

# Creating a class
class MyClass
end
myclass_obj = MyClass.new
# p myclass_obj # <MyClass:0x00007fd00058d450>

# Access Levels -) private, public and protected
=begin
class Cat
    def initialize(name)
        @name = name
    end
    def speak
        age = calculate_cat_age # here we call the private method
        puts "I'm #{@name} and I'm #{age} years old"
    end
    private
    def calculate_cat_age
        2 * 3 - 4
    end
end

my_cat = Cat.new("Bilbo")
my_cat.speak #=> I'm Bilbo and I'm 2 years old
# my_cat.calculate_cat_age # error
# protected -) , using the self ruby method, protected methods can be called within the context of an object of the same type.

=end

# Class Method types -) instance, singleton and class methods
=begin
class Thing
    def somemethod
        puts "something"
    end
    def self.other
        puts "accessing method without creating an instance"
    end
    class << self # the anonymous class
        def hello(name)
            puts "Hello, #{name}!"
        end
    end
end

foo1 = Thing.new # create an instance of the class
foo1.somemethod #  something
Thing.other # accessing method without creating an instance
Thing.hello('usman')


foo2 = Thing.new
def foo2.singletonmethod
    puts "creating the singleton method of object which can be access by only object which it defined"
end
foo2.singletonmethod
# foo1.singletonmethod # error -) can't be access by object which it not defined by it

foo3 = Thing.new
class << foo3
    def singletonmth
        puts "another way of defining singleton method through the object"
    end
end
foo3.singletonmth

=end

# instance variable with getter and setter
=begin
class Cat
    attr_reader :age # you can read the age but you can never change it
    attr_writer :name # you can change name but you are not allowed to read
    attr_accessor :breed # you can both change the breed and read it
    def initialize(name, breed)
        @name = name
        @breed = breed
        @age = 23
    end
    def speak
        puts "My name is #{@name} and I am a #{@breed} and my age is #{@age}"
    end
end

my_cat = Cat.new("Banjo", "birman")
# reading values
my_cat.age # 2 -) can read from the class
# my_cat.name # Error -) only have write to change can't read
my_cat.breed # "birman" -) can read and write both
# changing values
# my_cat.age = 3 #  Error -) can only read
my_cat.name = "usman" # -) can only write
my_cat.breed = "man" # -) can read and write both
my_cat.speak #  My name is usman and I am a man and my age is 23

=end

# Dynamic class creation
=begin
MyClass = Class.new # create a new class dynamically
my_class = MyClass.new # instantiate an object of type MyClass
Duck =
    Class.new do
        def quack
            'Quack!!'
        end
    end
duck = Duck.new
p duck.quack

=end

# Instance variables, preceded by @
# class variables, preceded by @@
# global variables, preceded by $
=begin
$total_person = 0
class Person
    @@persons_created = 0 # class variable, available to all objects of this class
    def initialize(name, age)
        my_age = age # local variable, will be destroyed at end of constructor
        @name = name # instance variable, is only destroyed when the object is
        @@persons_created += 1 #-) modification of class variable persists across all objects of this class
        $total_person += 1
    end
    def some_method
        puts "My name is #{@name}." # we can use @name with no problem
    end

    def another_method
        puts "My age is #{my_age}." # this will not work!
        # puts "My age is #{@age}." # this will work! -) not assigned a value
    end
    def how_many_person
        puts "person created so far is = #{@@persons_created}"
    end
end
mhmd = Person.new("usman", 23)
mhmd2 = Person.new("ur", 23)
mhmd3 = Person.new("rehnam", 23)

mhmd.some_method #=> My name is Mark.
# mhmd.another_method #=> throws an error

mhmd.how_many_person
puts $total_person

=end

# Inhertiance
=begin
class Animal
def say_hello
    'Meep!'
end
def eat
    'Yumm!'
end
end
class Dog < Animal # Dog is child class and it's inheriting from Animal -) parent class
    def say_hello #  overrides the say_hello method with different functionality
        'Woof!'
    end
end
spot = Dog.new
p spot.say_hello # 'Woof!'
p spot.eat # 'Yumm!'

class A
    @@classfoo  = 0 # shared between the base class and all subclasses as 1 variable
    @foo = 'usman'
    class << self
        attr_accessor :foo
    end
    attr_accessor :uho
    def initialize
        @@classfoo += 1
        @uho = "hahaha"
        puts @@classfoo
    end
    WOO = 4
    def self.boo1; p 'hoo' end
    def boo2; p 'boo' end
end

class B < A; end
class C < A
    def initialize
        @@classfoo = -4
        puts @@classfoo
    end
end

b = B.new # 1
c = C.new # -4
B.boo1 #  'hoo' # can inherited class method
p B::WOO # 4 -) can inherit Constant -) be aware, can be overridden through other class
b.boo2 # 'boo' # can inherited methods
p b::WOO rescue puts "can't access WOO directly"
p b.uho # can inherit instance variable
p c.uho # nil -) if you override that initialize instance variables without calling super, they will be nil
p B.foo # nil -) Class instance variables are not inherited:

=end

# Mixins
=begin
module SampleModule
    def self.included(base)
        base.extend ClassMethods
    end
    module ClassMethods
        def method_static
        puts "This is a static method"
        end
    end
    def insta_method
        puts "This is an instance method"
    end
end

class SampleClass
    include SampleModule
end

sc = SampleClass.new
sc.insta_method # This is an instance method
sc.class.method_static # This is an static method

=end

# Method missing
=begin
class Animal
    def method_missing(method, *args, &block)
        "Cannot call #{method} on Animal"
    end
end
p Animal.new.say_moo # cannot call say_moo on Animal
class Animal
    def method_missing(method, *args, &block)
        if method.to_s == 'say'
            block.call
        else
            super # default behaviour for method_missing -) NoMethodError
        end
    end
end
# say is not a defined method in Animal, method_missing is triggered, recognizes that the method is say, and executes the block.
p Animal.new.say{ 'moo' } # calling with block -) 'moo'
# p Animal.new.say2 {'mue'} # NoMethodError

class Animal
    def method_missing(method, *args, &block)
        say, speak = method.to_s.split("_")
        if say == "say" && speak
            return speak.upcase if args.first == "shout"
            speak
        else
            super
        end
    end
end
animal = Animal.new
p Animal.new.say_moo # using parameter -)'moo'
p animal.say_moo # moo
p Animal.new.say_usman ('shout') # # using parameter -) 'USMAN'
p animal.say_usman # usman
p animal.say_usman("shout") # USMAN
# p animal.say2_moo # calling super -) NoMethodError

=end

# Regular Expression and Regex Based Operation
=begin
if /hay/ =~ 'haystack' # -) /../ regex =~ str
    puts "There is hay in the word haystack"
else
  puts "regex value is not equal to string"
end

case "Ruby is #1!"
when /\APython/ #-) \A asserts the position at the start of the string
    puts "Boooo."
when /\ARuby/
    puts "You are right."
else
    puts "Sorry, I didn't understand that."
end

name_reg = /h(i|ello), my name is (?<name>.*)/i #i means case insensitive
# .* means "match any character (.) zero or more times (*)", which will capture everything until the end of the string.
name_input1 = "Hello, my name is Zaphod Beeblebrox"
name_input2 = "HELLO, my name is Zaphod Beeblebrox"
name_input3 = "ELLO, my name is Zaphod Beeblebrox"

match_data = name_input1.match(name_reg)
p match_data
match_data = name_reg.match "Hi, my name is Usman Ur Rehman!"
p match_data
match_data1 = name_reg.match(name_input1)
p match_data1
match_data2 = name_reg.match(name_input2)
p match_data2
match_data3 = name_reg.match(name_input3) # nil -) # not match with regex
p match_data3

if match_data.nil? #Always check for nil! Common error.
    puts "No match"
else
  p match_data[0] # "Hi, my name is Usman Ur Rehman!" -) return the full string match
  p match_data[1] # Usman Ur Rehman! -)
  p match_data[2] #=> nil -) Because it was a named group, we can get it by name
  p match_data[:name] #=> "Usman Ur Rehman!"
  p match_data["name"] #=> "Usman Ur Rehman!"
    puts "Hello #{match_data[:name]}!"
end

reg = /(((a)b)c)(d)/
match = reg.match 'abcd'
p match
p match[0] #=> "abcd"
p match[1] #=> "abc"
p match[2] #=> "ab"
p match[3] #=> "a"
p match[4] #=> "d"

=end

# Quantifiers
=begin
/a?/ # Zero or one:
/a*/ # Zero or many:
/a+/ # One or many:

reg =  /a{2,4}/ # Two, three or four
p matchV = reg.match('aa') # match
p matchV = reg.match('aaa') # match
p matchV = reg.match('aaaa') # match
p matchV = reg.match('aaaa2a') # matches the 2-4 first
p matchV = reg.match('a') # nil

reg2 = /a{2,}/ # Two or more
p matchV = reg2.match('aa') # match
p matchV = reg2.match('aaa') # match
p matchV = reg2.match('aaaa') # match
p matchV = reg2.match('aaaa2a') # matches the 2-4 first
p matchV = reg2.match('a') # nil

reg3 =  /a{,4}/ # Less than four (including zero)
p matchV = reg3.match('aa') # match
p matchV = reg3.match('aaa') # match
p matchV = reg3.match('aaaa') # match
p matchV = reg3.match('aaaa2a') # matches the 2-4 first
p matchV = reg3.match('a') # match

string = "My not so long string"
p string
p string[/so/] # so
p string[/present/] # nil
p string[/present/].nil? # true
p string[/(n.t).+(l.ng)/, 2] # long -) 2 denotes you're capturing second matching group
p string[/(n.t).+(l.ng)/, 1] # not -) 1 denotes you're capturing first matching group
p string.sub(/(n.t).+(l.ng)/, '\1 \2' ) # removing so
p string.gsub(/(n.t).+(l.ng)/, '\1 very \2' ) # replacing so with very

#The following forms are equivalent
regexp_slash = /hello/
regexp_bracket = %r{hello}
regexp_new = Regexp.new('hello')
string_to_match = "hello world!"
#All of these will return a truthy value
p string_to_match =~ regexp_slash # => 0 -) showing the at index match
p string_to_match =~ regexp_bracket # => 0
p string_to_match =~ regexp_new # => 0
p "world hello" =~ regexp_slash # 6

# ^ -) Start of line
# $ -) End of line
# \A -) Start of string
# \Z -) End of string, excluding any new line at the end of string
# \z -) End of string
# . -) Any single character
# \s -) Any whitespace character
# \S -) Any non-whitespace character
# \d -) Any digit
# \D -) Any non-digit
# \w -) Any word character (letter, number, underscore)
# \W -) Any non-word character
# \b -) Any word boundary

=end

# Ruby Access Modifiers
=begin
class Sequence
    include Enumerable
    def initialize(from, to, by)
        @from = from
        @to = to
        @by = by
    end
    def each
        x = @from
        while x < @to
            yield x
            x = x + @by
        end
    end
    def *(factor)
        Sequence.new(@from*factor, @to*factor, @by*factor)
    end
    def +(offset)
        Sequence.new(@from+offset, @to+offset, @by+offset)
    end
end
object = Sequence.new(1,10,2)
object1 = Sequence.new(1,10,3)

object.each do |x|
    puts x # 1 3 5 7 9
end
object1.each do |x|
    puts x # 1 4 7
end

=end

# Loading Source Files

# require 'awesome_print'
# require_relative 'myproj/version' -) load files relative to the file

#  Automatically loading source files
# autoload :MyModule, '/usr/local/lib/modules/my_module.rb'

# Loading optional files -) loadError if file not found
=begin
module TidBits
    @@unavailableModules = []
    [
        { name: 'CoreExtend', file: 'core_extend/lib/core_extend' } \
 , { name: 'Fs' , file: 'fs/lib/fs' } \
 , { name: 'Options' , file: 'options/lib/options' } \
 , { name: 'Susu' , file: 'susu/lib/susu' } \
].each do |lib|
        begin
            require_relative lib[ :file ]
        rescue LoadError
            @@unavailableModules.push lib
        end
    end
end # module TidBits
=end

# Loading file repeatedly
# load 'somefile'

# Range
=begin
p (10..1).to_a # []
p (1...3).to_a # [1, 2]
p (-6..-1).to_a # [-6, -5, -4, -3, -2, -1]
p ('a'..'e').to_a # ["a", "b", "c", "d", "e"]
p ('a'...'e').to_a # ["a", "b", "c", "d"]
p Range.new(1,3).to_a # [1, 2, 3] -) default false
p Range.new(1,3,true).to_a # [1, 2]

(1..5).each do |i|
  p i
end

=end

# Module
=begin
module Foo
    def foo_method
        puts 'foo_method called!'
    end
end
module Bar
    def bar_method
        puts 'bar_method called!'
    end
end
module SomeMixin
    def extendfoo
        puts "Extend foo!"
    end
end

class Baz
    include Foo
    include Bar
    extend SomeMixin
    def baz_method
        puts 'baz_method called!'
    end
end
new_baz = Baz.new
new_baz.baz_method # baz_method called!
new_baz.bar_method # bar_method called!
new_baz.foo_method # foo_method called!
# new_baz.extendfoo # error -) method was NOT added to the instance
Baz.extendfoo

module Namespace
    module Child
        class Foo;
            puts "Child module have class"
        end
        puts "module in another module"
    end # module Child
    # Child::Foo # Foo can now be accessed as
end # module Namespace

Namespace::Child::Foo # Foo can now be accessed as

=end

# Recursion
def gdc (x, y)
    return x if y == 0
    return gdc(y, x%y)
end
v = gdc(2,4)
# p v

def fact(x, acc=1)
    return acc if x <= 1
    return fact(x-1, x*acc)
end
v = fact(4)
# p v

class Bakery
    attr_accessor :selected_packs
    def initialize
        @packs = [5,3] # pack sizes 5 and 3
        @selected_packs = []
    end
    def allocate(qty) # 16 | 11 | 6 | 1 | 3
        remaining_qty = nil
        @packs.each do |pack| # 5 | 5 | 5 | 5 | 3 | 5 | 3
            remaining_qty = qty - pack # 16 - 5 | 11 - 5 | 6 - 5 | 1 - 5 | 1 - 3 | 6 - 3 | 3 - 5 | 3 - 3
            # Since both checks (remaining_qty > 0 and remaining_qty == 0) fail, the method ends,
            # returning remaining_qty (-4) to the previous call (allocate(6)).
            if remaining_qty > 0
                # p allocate(remaining_qty)
                ret_val = allocate(remaining_qty) # allocate(11) | allocate(6) | allocate(1) | allocate(3)
                if ret_val == 0
                    @selected_packs << pack # [3] | ,
                    remaining_qty = 0
                    break
                end
            elsif remaining_qty == 0
                @selected_packs << pack
                break
            end
        end
        remaining_qty
    end
end

bakery = Bakery.new
bakery.allocate(16)
puts "Pack combination is: #{bakery.selected_packs.inspect}"

# splat operator (*)
=begin
def print_spouses(person, *spouses)
    spouses.each do |spouse|
        puts "#{person} married #{spouse}."
    end
end
# print_spouses('usman', 'Conrad', 'Michael', 'Mike', 'Eddie', 'Richard', 'John', 'Larry')
bonaparte = ['Napoleon','Joséphine','Marie Louise']
# print_spouses(*bonaparte)

=end

# JSON with Ruby
=begin
require 'json'
j = '{"a": 1, "b": 2}'
puts JSON.parse(j) # {"a"=>1, "b"=>2}

# generating JSON out of a Ruby hash is as simple as parsing
hash = { 'a' => 1, 'b' => 2 }
json = hash.to_json
puts json # {"a":1,"b":2}
=end

# Destructuring
=begin
a, b = [0,1] # a=0, b=1
p a , b
a, *rest = [0,1,2,3]  # a=0, rest=[1,2,3]
p a , rest
a, * = [0,1,2,3] # a=0  -) Equivalent to .first
p a
*, z = [0,1,2,3]  # z=3 -) Equivalent to .last
p z

triples = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
triples.each { |(first, second, third)| puts second } # 2 5 8
p triples.map { |(first, *rest)| rest.join(' ') } # ["2 3", "5 6", "8 9"]

=end

# keyword Argument
=begin
def say(**args)
    puts args
    puts args[:message] || "Message not found"
end
say foo: "1", bar: "2" # {:foo=>"1", :bar=>"2"}
say message: "Hello Usman!"

def say2(message: nil, before: "<p>", after: "</p>")
    puts "#{before}#{message}#{after}"
end
args = { message: "Hello World", after: "</p><hr>" }
say2(**args) # <p>Hello World</p><hr>
args = { message: "Hello World", foo: "1" }
# say2(**args) # error -) unknown keyword :foo

def inner(foo:, bar:)
    puts foo, bar
end
def outer(something, foo: nil, bar: nil, baz: nil) # something is required because not assign any default value
    puts something
    params = {}
    params[:foo] = foo || "Default foo"
    params[:bar] = bar || "Default bar"
    inner(**params)
end

outer "Hello Usman "# Hello Usman Default foo Default bar
outer "Hello Usman", foo: "Custom foo" # Hello Usman Custom foo Default bar

=end

# Catching Exception with Begin/Rescue
=begin
def divide(x, y)
    begin
        print "Division: "
        z = x/y
    rescue ZeroDivisionError
        puts "Don't divide by zero!"
        y = 1
        retry
        # return nil
    rescue TypeError
        puts "Division only works on numbers!"
        # return nil
    rescue => e
        # puts "There was an error"
        puts "There was a %s (%s)" % [e.class, e.message]
        # puts e.backtrace
    else
        puts "There is no error in this code: "
        return z
    ensure # If the ensure clause has a return that will override the return value of any other clause!
        puts "Either error or resolved it always run"
    end


end
p divide(4,2) # 2
p divide(4, 0) # Don't divide by zero -) by retry it return 4
p divide(4, 'a') # Division only works on numbers
p divide('a', 4) # There was a NoMethodError (undefined method `/' for nil:NilClass)
p divide(nil, 2) # There was a NoMethodError (undefined method `/' for nil:NilClass)

=end

# Debugging
# $ gem install pry-byebug # -) install pry-byebug gem
# require 'pry-byebug' # -) top of your .rb
# binding.pry # -) wherever you want breakpoint

# following .rb file
require 'pry-byebug'
def hello_world
    puts "Hello"
    binding.pry # break point here
    puts "World"
end
