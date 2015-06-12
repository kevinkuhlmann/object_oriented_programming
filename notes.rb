# Day 4 - Object Oriented Programming

class Point
  attr_accessor :x, :y
  # attr_reader :x, :y
  # attr_writer :x, :y

  def initialize (x, y)
    @x = x
    @y = y
  end

  def to_s
    "(#{@x}, #{@y})"
  end

  def add(point) #+(point )
    Point.new(@x + point.x, @y +point.y)
  end

end

point = Point.new(1, 2)

puts point

puts point.x

puts point.y

point.x=(5)
point.x = 5
puts point.x

point.y=(5)
puts point.y


p1 = Point.new(1, 2)
p2 = Point.new(3, 4)

p4 = p1.add(p2)










