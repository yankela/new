# #
# class Person
#   attr_accessor :hair_color, :name
#
#     def initialize(hair_color, name)
#     @hair_color = hair_color
#     @name = name
#   end
#
#     def sing(fave_song)
#     @sing = fave_song
#   end
#
#   def code
#     puts "I am coding!"
#   end
# end
#
# class Wyncoder < Person
#   def to_string
#     puts "My name is #{name}. My hair color is #{hair_color}."
#   end
#   def inspection
#     puts "Hi! I'm #{name}. Check out my #{hair_color} hair."
#   end
# end
#
#
# walter = Person.new "brown", "walter"
#
# puts Wyncoder.new("walter", "Blonde")
# p Wyncoder.new("walter", "Blonde")
# p Wyncoder.new("Blonde", "Walter").to_string
# puts Wyncoder.new("Blonde", "Walter").to_string
# p Wyncoder.new("Blonde", "Walter").inspection
# puts Wyncoder.new("Blonde", "Walter").inspection #m
# p "".to_s.methods
# p [].to_s.methods
# p Object.to_s.methods
# p walter.code
# p walter.sing("la la la")
# sandy = Person.new "brown", "sandy"
# p sandy.code
# bob = Person.new "green", "bob"
# p bob.code
#*************************************** #MY CODE

# def add(left, right)
  #if Strings, String.concat
  #if Array, Array.concat
  #if Nil or Hash, errors
  #If anything that's not a number, errors
  #Unless it's related to a number
  #Unless it knows how to add some other way
  #else
  # left + right
# end #bad design.

# class Table
#   attr_accessor :tabletop
#
# def initialize
#   @tabletop = []
#   end
#
#
# def add(thing)
#   @tabletop << thing
#   end
# end
#
# wooden_table = Table.new
# p wooden_table.tabletop
# wooden_table.add("hello")
# wooden_table.add(nil)
# wooden_table.add({})
# wooden_table.add([])
# wooden_table.add(4)
# p wooden_table.tabletop
#
# red_table = Table.new
# wooden_table.add(red_table)
# wooden_table.add(Table)
# p wooden_table.tabletop
#
# class Universe
# end
#
# universe = Universe.new #EDS CODE
#
# class Pizza #<- pizza shop
#   @@num_pizzas = 0 #<- class-scoped variable
#   @@all_pizzas = []
#
#
#   def self.num_pizzas
#     @@num_pizzas
#   end
#
#   #instance variable
#   attr_accessor :toppings #<- what you want to edit
#   #created an accessible property of a slice of pizza
#   def initialize #<- edits slice of pizza toppings
#     @toppings = [] #<- gets rid of the nil
#
#     #class scope is here too
#     @@num_pizzas += 1 #allows to count @@num_pizzas
#
#                       # @@num_pizzas = @@num_pizzas + 1
#     @@all_pizzas << self #<- shared scope
#   end
#
#   def self.spoil_all_the_pizza
#     @@all_pizzas.each do |slice|
#       slice.add_toppings("anchovy")
#     end
#   end
#
#   def add_toppings(topping)
#     @toppings << topping
#   end
#   #def Pizza.num_employees <- same thing as self
#   # class scoped method
#   def self.num_employees #<- property of pizza shop
#     10
# end
#
# # instance-scoped method
#   def cheesy?
#     true
#   end
#
# #   def hack_pizza_shop # THIS AFFECTS LINE 104 AND 100 PIZZAS
# #       #FROM 142
# #     @@num_pizzas = 0
# #   end
# end
#
# # p Pizza.num_employees
#
# # class methods
# # p Pizza.@@num_pizzas <- error, needs to be defined under self
# # p Pizza.num_pizzas #<- starts at 0, line 138 is updated
# # p Pizza.num_employees
#
# cheese_pizza = Pizza.new
#
# # instance methods
# # p cheese_pizza
# # p cheese_pizza.cheesy?
# # p cheese_pizza.toppings
# # p cheese_pizza.add_toppings("pineapple")
# # p 100.times { Pizza.new}
# # p Pizza.num_pizzas #<- line 104-105 counts EVERYTHING
#
# p self
# Pizza.spoil_all_the_pizza
# p cheese_pizza


# cheese_pizza.hack_pizza_shop #CHANGES EXPLAINED LINE 122
# p Pizza.num_pizzas
#INSTANCE VARIABLES ARE FOR THE SLICE OF PIZZA
#CLASS VARIABLES ARE FOR THE PIZZA SHOP

#===============================================================
# class Pizza
#   def taste
#     puts "yummy"
#   end
#
#   private
#
#   def secret_ingredients
#   end
#
#   def another_secret
#   end
# end
#
#
# slice = Pizza.new
#p slice.secret_ingredients <-private
# p slice.send :secret_ingredients #<-gives me answer regardless of privacy
# p slice.taste

#=================================================================
#
# class BankTransfer
#   def transfer
#     withdraw
#     deposit
#   end
#
# private
#   def withdraw
#   end
#
#   def deposit
#   end
# end
#
# bt = BankTransfer.new
# # bt.withdraw
# bt.transfer
# bt.send :deposit #<- EVIL EMPLOYEE

#==========================================================================

# class Parent
#   def speak
#     puts "Hello"
#     private
#     def secret
#       puts "Shh!"
#   end
# end
#
#
# class Child < Parent
#   def expose_secret
#     secret
#   end
# end
# end
#
# c = Child.new
# c.expose_secret

#=========================================================================

#
# class Parent
#   def speak(statement)
#     puts statement
#   end
# end
#
# class Child < Parent
#   def speak(statement)
#     super(statement + " Wesley")
#   end
# end
#
# c = Child.new
# c.speak("Hello")


#==========================================================================
#breakout

#VARIABLES
# celeb_one = "Britney Spears"
# celeb_age = 35
#
# celeb_two = "Leo Dicaprio"
# celeb_two_age = 42

# HASHES & SYMBOLS
# celeb = {name: "Britney Spears", age: 35, birthday: Time.new(1981, 12, 02)}
# celeb_two = {name: "Leo Dicaprio", age: 42, birthday: Time.new(1974, 11, 11)}
# p celeb[:name]
# p celeb[:age]
# # p celeb[:birthday]
# p ((Time.now - celeb[:birthday]) / 60 / 60 / 24 / 365).to_i
#
#
# #ARRAYS
# celebs = [celeb, celeb_two]
#
# celebs.map do |celeb|
#   celeb[:age] += 1
# end




def get_age(birthday)
  ((Time.now - birthday) / 60 / 60 / 24 / 365).to_i
end

# p get_age(celeb_two[:birthday])

#getter method
class Celeb
attr_accessor :name, :birthday, :gender

#celeb = Celeb.new("The Rock", Time.new(1981, 12, 02\))

def initialize(name, birthday, gender) #<- ^^^^ works with comment above
  @name = name
  @birthday = birthday
  @gender = gender
end

# attr_reader :name
  # reader
  # def name
  #   @name
  # end

# attr_writer :name
  # writer
  # def name=(name) #<- argument
  #   @name = name
  # end

  # reader
  # def birthday
  #   @birthday
  # end

  # writer
  # def birthday=(birthday)
  #   @birthday = birthday
  # end


  # reader
  def age
    ((Time.now - @birthday) / 60 / 60 / 24 / 365).to_i
  end

  # writer
  # def age=(age)
  #   @age = age
  # end

end


celeb = Celeb.new("The Rock", Time.new(1981, 12, 02), "male") #creating an instance & storing it in a variable
puts celeb.name #<- argument
p celeb.gender
p celeb.age
