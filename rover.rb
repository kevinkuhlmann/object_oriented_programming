class Rover

  attr_reader :x, :y, :direction

  def initialize (x, y, direction, name)
    @x = x
    @y = y
    @direction = direction
    @name = name
  end

  def move
    case @direction
      when "N"
        @y += 1
      when "E"
        @x += 1
      when "S"
        @y -= 1
      when "W"
        @x -= 1
    end
  end

  def turn_left
    case @direction
      when "N"
        @direction = "W"
      when "E"
        @direction = "N"
      when "S"
        @direction = "E"
      when "W"
        @direction = "S"
    end
  end

  def turn_right
    case @direction
      when "N"
        @direction = "E"
      when "E"
        @direction = "S"
      when "S"
        @direction = "W"
      when "W"
        @direction = "N"
    end
  end

  def run_exercise(input)
    input.each_char do |x|
      read_instruction(x)
    end
  end

  def read_instruction(i)
    case i
    when "M"
      move
    when "L"
      turn_left
    when "R"
      turn_right
    end
  end


  def to_s                                #Not sure on why I have to do this, ask Monday
    "#{x}, #{y}, #{direction}"
  end

  def start_exercise
    puts "Please input commands for #{name}"
    commands = gets.chomp.upcase
    run_exercise(commands)
    puts "The final destination for #{name} is #{to_s}"
  end


end


r1 = Rover.new(1, 2, "N", "Rover 1")
r2 = Rover.new(3, 3, "E", "Rover 2")

r1.start_exercise
r2.start_exercise

