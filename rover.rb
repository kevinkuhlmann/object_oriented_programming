class rover
  attr_reader :x, :y, :direction

  def initialize (x, y, direction)
    @x, @y, @direction = x, y, direction
  end

  def move
    case @direction
    if @direction "N"
      @y += 1

    when "N'"
      @y +=1
    when "S"


  def read_instruction (i)
  def to_s
    "Rover: #{x}, #{y} facing #{direction}"


r = rover.new
puts r.to_s
r.move
puts r
r.y

r.read_instruction("m")

input.each_char do |c|



def read_instructions
  case i
    when "M"
      move
    when "L"
    turn left
  when "R"
    turn right
  else

  end

  else

  end
  puts self
end