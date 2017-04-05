# p "".blank? #does not know what this is above require
require 'active_support/all'

#Monkey Patching - adding a new method to an existing class
# p "".blank?
# p "".class #<- still a string

# class String
#   def monkey?
#     self.eql? "monkey" #<-asking the string itself if it is equal to monkey
#   end
#
#   def +(other_string)
#     self.to_i + other_string.to_i
#   end
# end

# p "hello", "hello".length, "hello" << " world"
# p "".monkey?, "monkey".monkey? #<- true self.eql?
# p ("1" + "1") #due to line 13, it no longer returns "11"
# ("1".to_i + "1".to_i) #<- no need to do this
# p("hello" + "world") # <- returns 0 because of line 13

#============================================================================
class String
  def +(other_string)
    self.concat(other_string.to_s)
  end
end
def add_two(number)
  if number.respond_to?(:+) # if I can do the damn thang?
  number + 2 # then let's do the damn thang!
  end
end

p add_two(2)
p add_two({}) #<- works due to line 31
# class String
#   def +(other_string) #<- denies line 27 and raises error
#     raise 'kaboom!'
#   end
# end
p add_two("") #<- works due to line 27
class MyString < String
  def +(other_string)
    puts "kaboom!"
  end
end
p add_two(MyString.new)
