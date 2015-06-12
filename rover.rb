class Rover

attr_accessor :x, :y, :direction

  def initialize (x, y, direction)
    @x = x
    @y = y
    @direction = direction
  end


  def to_s
    "(#{@x}, #{@y}, #{@direction})"
  end


  def read_instructions(i)
    case i
    when "M"
      move
    when "L"
      turn_left
    when "R"
      turn_right
    end
  puts self
  end

  def turn_left

  end

  def turn_right

  end

  def move(direction)
    if @direction == "N"
      @y = @y + 1
    elsif @direction == "E"
      @x = @x + 1
    elsif @direction == "S"
      @y = @y - 1
    elsif @direction == "W"
      @x = @x - 1
    else
    end
  end

end



# N = (1, 0, 0, 0)
# E = (0, 1, 0, 0)
# S = (0, 0, 1, 0)
# W = (0, 0, 0, 1)



rover1 = Rover.new(1, 2, "N")


rover2 = Rover.new(1, 2, "N")

rover1.move("N")
rover1.move("E")

puts rover1











# what is the purpose of to_s
# how come it doesn't add
# how to make circle at the top



