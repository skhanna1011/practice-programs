puts "Enter the Starting Coordinates"
coords = gets.chomp.split(" ")
puts "Enter the Move command"
command = gets.chomp.upcase.split("")

dir = {
  :N => 1,
  :E => 2,
  :S => 3,
  :W => 4
}

x = coords[0].to_i
y = coords[1].to_i
facing = dir[coords[2].upcase.to_sym]

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
puts "#{x}, #{y}, Facing : #{dir.key(facing)}"
puts "Distance from origin: #{Math.sqrt(((x - coords[0].to_i)*(x - coords[0].to_i))+((y - coords[1].to_i)*(y - coords[1].to_i)))}"