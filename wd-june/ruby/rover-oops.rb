class Rover
  attr_accessor :x, :y, :facing

  dir = {
    :N => 1,
    :E => 2,
    :S => 3,
    :W => 4
  }

  def initialize(details)
    @x = details[:x];
    @y = details[:y];
    @facing = dir[details[:facing].to_sym]

  def move(command)
    command.each do |instance|
      case instance
      when "R"
        if facing == 4
          facing = 1
        else
          facing += 1
        end
      when "L"
        if facing == 1
          facing = 4
        else
          facing -= 1
        end
      when "M"
        case facing
        when 1
          y += 1
        when 2
          x += 1
        when 3
          y -= 1
        when 4
          x -= 1
        end
      end
    end
  end
end


r1 = Rover.new(1,1,"N");
