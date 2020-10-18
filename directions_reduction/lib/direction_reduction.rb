require 'pry'

def direction_reduction(directions)
  directions.each_with_index do |direction, i|
    return directions if i == directions.length - 1

    case direction
    when 'NORTH'
      if directions[i + 1] == 'SOUTH'
        return direction_reduction(directions.first(i) + directions.last(directions.length - 2 - i))
      end
    when 'SOUTH'
      if directions[i + 1] == 'NORTH'
        return direction_reduction(directions.first(i) + directions.last(directions.length - 2 - i))
      end
    when 'EAST'
      if directions[i + 1] == 'WEST'
        return direction_reduction(directions.first(i) + directions.last(directions.length - 2 - i))
      end
    when 'WEST'
      if directions[i + 1] == 'EAST'
        return direction_reduction(directions.first(i) + directions.last(directions.length - 2 - i))
      end
    end
  end
end
