class Person

  def initialize(name)
    @name = name
  end

  def greeting
    puts "Hi, my name is #{@name}."
  end

end


class Student < Person

  def learn
    puts "I get it!"
  end

end


class Instructor < Person

  def teach
    puts "Everything in ruby is an object."
  end

end



nadia = Instructor.new("Nadia")

chris = Student.new("Chris")

nadia.greeting
chris.greeting
puts "-----------"
nadia.teach
chris.learn
puts "-----------"

# Wont work because "Chris" is a Student object, and does not inherit from the Instructor object that contains the "teach" method
chris.teach
