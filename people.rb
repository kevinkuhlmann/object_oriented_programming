class Person

  #attr_accessor :name

  def initialize(name)
    @name = name
  end

  def greeting
    "Hi, my name is #{@name}"
  end

end



class Student < Person

  def learn
    "I get it!"
  end

end

class Instructor < Person

  def teach
    "Everything in Ruby is an Object"
  end

end


# instance of Instructor whose name is "Chris" and call his greeting

chris = Instructor.new("Chris")
puts chris.greeting

# instance of Student whose name is "Cristina" and call her greeting

cristina = Student.new("Cristina")
puts cristina.greeting

# Call the teach method on your instructor instance

puts chris.teach

# Call the learn method on your student

puts cristina.learn

# call the teach method on your student instance. What happens? Why doesn't that work? Leave a comment in your program explaining why

puts cristina.teach

# the last teach method on my student instance doesn't work because it does not have a teach method define in it's class.  The student
# instance only has access to it's one class and parent class methods.




