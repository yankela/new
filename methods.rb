# string_size_method = "123abc".method(:size)
# p string_size_method.class
# p string_size_method.methods  #nouning the verb, -ing the verb

# def add_two(number) #def = define a number
#   puts number+2
# end
# add_two(1)

# def flip_words(first_word, second_word)
#   puts second_word, first_word
# end
#
# flip_words("world", "hello")

# def full_name(first_name, middle_name, last_name)
#   puts "#{first_name} #{middle_name} #{last_name}"
# end
# full_name("Yankel", "Yadira", "Amarante") #Must have all 3. No more, no less.
# You can put nil to avoid errors.

# add_two(1) <--- out of scope

# adds 2 to a number
# def add_two(n)
#   puts n+2
# end

# add_two(1)

# accepts: number
# returns: nil
# # side effects: puts the answer on the screen
# def add_two(number)
#   puts number + 2
# end
#
# output = add_two(1)
# p output

# accepts: number
# returns: the number + 2 unless number is nil
# # effects: none
# def add_two(number)
#   unless number.nil?
#     number + 2
#   end
# end
#
# output = add_two(1)
# p output

# output = add_two(nil)
# p output

# accepts: an array of stuff
# returns: the item if it is found, else??
# effects: nothing
# def find_the_needle(needle, haystack)
#   haystack.each do |item|
#     if item == needle
#       #stop
#       return item #explicit return
#     end
#   end
# end
#
# output = find_the_needle(1, [1,2,3,4,5,6])
# p output
# output = find_the_needle(10, [1,2,3,4,5,6])
# p output

# def one
#   1 #implicit return
#   return 1 #explicit return
#   2
#   3
#   4
# end
#
#
# output = one
# p output

# def add_two(number)
  #   unless number.nil?
  #   number + 2
  # end
  # if number.class == Integer # instead of listing the bad, list what you need
  #   number + 2
  # end
# def add_two(number)
#   if number.respond_to?(:+) #if i can do the damn thang!
#     if number.respond_to?(:push)
#       number.push 2
#     else
#       number + 2 # let's do the damn thang!
#     end
#   end
# end
#
# def test
# p add_two(0)
# p add_two(1)
# p add_two(1.5) # <-- broke unexpectedly, regression
# p add_two(nil)
# p add_two(false)
# p add_two({})
# end
#
# test

# def full_name(first_name, middle_name, last_name)
#   if middle_name.nil?
#     "#{first_name} #{last_name}"
#   else
#     "#{first_name} #{middle_name} #{last_name}"
#   end
# end
#
# p full_name("Yankel", "Yadira", "Amarante")
# p full_name("John", nil, "Doe")

#named block of code
# def say_hello
#   puts "Hello"
# end

#anonymous block of code
# begin
#   puts "Hello"
# end

# def say (str)
#   puts str
# end

#named string
# str = "Hello"
# p str.upcase

#anonymous string
# "hello".upcase
# say ("hello")

# anonymous block of code
# 5.times do
#  puts "Hello"
# end
# # ^ same thing
# 5.times { puts "Hello"}

# named block of code
# def say_hello(argument)
#   puts "Hello #{argument}"
# end

# method with no arguments
# def say_hello
#   puts "hello"
# end

# method with 1 argument
# def say(str)
#   puts str
# end
# say("hello")


# 5.times { puts "hello" } # block with no arguments
# 5.times do |number| #<-- counter
#   puts "hello #{number}" # block with 1 argument
# end

# enumerator_5 = 5.times
# p enumerator_5
# arr = []
# p arr
# p (enumerator_5.methods - arr.methods).size
# p (arr.methods - enumerator_5.methods).size
#
# p enumerator_5.to_a # change enumerator to array
# p arr.each # change array to enumerator
# sym = :a
# p sym.to_s #change symbol to string
# letter = "a"
# p letter.to_sym #change string to symbol


# enumerator_5.each do |number|
#   puts number
# end

# p (5..10).to_a # create an array 5-10

# range = (5..10)
# p range.class # can't insert numbers or anything

# p 100.times.to_a
# p (50..100).to_a

# p ("a".."z").to_a
# (1..5).each { |number| puts number}
# [1,2,3,4,5].each { |number| puts number}

# for loop and each loop do the same EXACT thing

# arr = [1,2,3,4,5]
# for number in arr
#   if number.even?
#     puts "Even"
#   else
#     puts "Odd"
#   end
# end
#
# arr.each do |number|
#   if number.even?
#     puts "Even"
#   else
#     puts "Odd"
#   end
# end

# arr = [1,2,3,4,5]
# #transforms
# output = arr.map do |number|
#   if number.even? #number.even? ? "Even" : "Odd"
#     "Even"
#   else
#     "Odd"
#   end
# end

# input = (1..5)
# output = input.select do |number|
  #output = input.find_all do |number|
#   number.even?
# end
# p input.to_a, output
#
# input = (1..5)
# output = input.reject do |number|
#   number.even?
# end
# p input.to_a, output

# input = [1,2,3,4,5]
# output = []
# input.each do |number|
#   if number.even?
#   output << number
# end
# end
# p output

# THE CODE BELOW ME AND ABOVE ME ARE THE SAME

# input = (1..5)
# output = input.select do |number|
#   number.even?
# end
# p output

# input = [1,2,3,4,5]
# output = []
# input.each do |number|
#   if number.even?
#     output << "Even"
#   else
#     output << "Odd"
#   end
# end
# p output

# THE CODE BELOW ME AND ABOVE ME ARE THE SAME

# input = (1..5)
# output = input.map do |number|
#   #input.map! do |number| #<-- YOU CAN DO THIS INSTEAD OF THE ABOVE
#   number.even? ? "Even" : "Odd"
#
# end
# p output



# names= ['romeo', 'oedipus', 'hansel', 'gretel']
#
# def capitalize_each(names)
#   names.map!(&:capitalize)
# end
    # name.capitalize

  # p names.map!(&:capitalize)



# p capitalize_each(names)

# names= ['romeo', 'oedipus', 'hansel', 'gretel']
# names.map!(&:capitalize)
# p names


# output = input.map do |name|
# p names
# => ['Romeo', 'Oedipus', 'Hansel', 'Gretel']

# module AlphabetTesters # require /.AlphabetTesters.rb' opens in new file
# def a?(str)
#   str.start_with?("a")
#   end
# end
#
# def self.print
#   puts "Send a document to the printer"
# end
#
# include AlphabetTesters #<-copies code under module
# p a?("alo")


# def add_two(number = 0, *rest)#<- splat operator
#   p arguments
#   if not number.nil?
#     number + 2
#   end
# end

# arr = []
# arr.push(1, false, nil) #<- puts stuff in array
#
# p arr

# def add_two(number, options = {})
#   if options[:nils_ar_ok]
#     number + 2 unless number.nil?
#   else
#   number + 2
#   end
# end
# #
# p add_two(0)
# p add_two(nil, {nils_ar_ok: true})

# bill = 100
# tip_amount = bill * 0.20 #<- no repitition
# total = bill + tip_amount
# p total

# puts "Chapter 2"
# puts "In a world where..."
# puts "The end."
#
# def chapter(one, two, three)
#   puts one
#   puts two
#   puts three
# end
#
# chapter("Chapter 1", "In a world where...", "The end.")
# chapter("Chapter 2", "We continue to...", "The end.")

# def chapter_block(chapter_number)
#   puts "Chapter #{chapter_number}"
#   yield
#   puts "The end."
# end

# REPL GAME HELP ^

# chapter_block(2) do
#   puts "In a world where..."
# end

# def chapter_block(chapter_number, summary)
#   puts "*"*100
#   puts "Chapter #{chapter_number}"
#   puts summary
#   puts "*"*100
# end

# puts chapter_block(1, "stuff happens") #<- can't ask questions, can't do gets

# chapter_block do
#   puts "Chapter 1"
#   puts "stuff happens"
#   puts "Question 1"
#   puts "Question 1" #gets.chomp
# end

# bill = 100
# tip_amount = bill * 0.20 #<- no repitition
# total = bill + tip_amount
# p total
