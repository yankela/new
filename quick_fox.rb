# class Fox
#
# def jumped_over(arg1, arg2)
#   end
# end
#
# lazy_dog = "Hi"
# daisy_log = "I work now"
#
#
# quick_fox = Fox.new
# quick_fox.jumped_over(lazy_dog, daisy_log)
# p quick_fox.jumped_over("lazy_dog", "daisy_log")
# p quick_fox.jumped_over("asdfn", "sdfjkn")
# quick_fox.jumped_over(lazy_dog, daisy_log)


# class Person
#   attr_accessor :name, :hair_color
#
#   @@everyone = []
#
#   def initialize(name, hair_color)
#     @name = name
#     @hair_color = hair_color
#   end
#
#   def self.riot
#     puts "The people are rising up!"
#     @@everyone.each do |person|
#       puts "#{person.name} is rioting"
#     end
#   end
#
#   def save
#     @@everyone << self
#   end
#
#   def sing
#     puts "#{@name} is singing "
#   end
# end
#
#
#
# sandy = Person.new("Sandy", "brown")
# sandy.save
# joe = Person.new("Joe", "black")
# joe.save
# tim = Person.new("Tim", "red")
# tim.save
# Person.riot
# .riot


# class Person
#   attr_accessor :name, :hair_color
#
#   @@everyone = []
#
#   def initialize(name, hair_color)
#     @name = name
#     @hair_color = hair_color
#   end
#
#
#   def riot
#     "The people are rising up!"
#   end
#
#
#   def save
#     @@everyone << self
#   end
#
#   def sing
#     "#{@name} is singing "
#   end
# end
#
# yankel = Person.new("Yankel", "Brown")
#
# puts yankel.riot
# puts yankel.sing

# class Person
#   attr_accessor :name, :hair_color
#
#   @@everyone = []
#
#   def initialize(name, hair_color)
#     @name = name
#     @hair_color = hair_color
#   end
#
#   def save
#     @@everyone << self
#   end
#
#   def sing
#     puts " #{@name} is singing "
#   end
# end



# beatles = [
#   {
#     name: nil,
#     nickname: "The Smart One"
#   },
#   {
#     name: nil,
#     nickname: "The Funny One"
#   },
#   {
#     name: nil,
#     nickname: "The Cute One"
#     },
#   {
#     name: nil,
#     nickname: "The Quiet One"
#   }
# ]
#
# i = 0
# while i < beatles.length
# break
# beatles.each do |i|
# if beatles[i][:nickname] == "The Smart One"
#   puts beatles[i][:name] == "John"
# elsif beatles[i][:nickname] == "The Funny One"
#   beatles[i][:name] == "Ringo"
# elsif beatles[i][:nickname] == "The Cute One"
#   beatles[i][:name] == "Paul"
# else beatles[i][:nickname] == "The Quiet One"
#   beatles[i][:name] == "George"
#   i += 1
#   end
# end
#
# i = 0
# while i < beatles.length
#   puts "Hi, I'm #{beatles[i][:name]}.  I'm #{beatles[i][:nickname]}!"
#   i += 1
#   end
# end





# (1..100)
