# Starting with the number 1 and moving to the right in a clockwise direction a 5 by 5 spiral is formed as follows:

# 21 22 23 24 25
# 20  7  8  9 10
# 19  6  1  2 11
# 18  5  4  3 12
# 17 16 15 14 13

# It can be verified that the sum of the numbers on the diagonals is 101.

# What is the sum of the numbers on the diagonals in a 1001 by 1001 spiral formed in the same way?


class Spiral

  def initialize(size)
    @size = size
    @spiral = []
    @nums_to_insert = (1..size).to_a
    @row_index = size/2 + 1
    @column_index = size/2 + 1
    @directions = [method(:right), method(:down), method(:left), method(:up)]
    @dir_index = 0
    build_empty_spiral
  end

  def build_empty_spiral
    (1..@size).each { |arr| @spiral << Array.new(@size, nil) }
  end

  def fill_spiral
    spiral_path = (1..@size).to_a
    (1..@size).each { |n| spiral_path << n }
    spiral_path.sort

    spiral_path.each do |step|
      step.times do move
      end
    end
  end

  def move
    @directions[@dir_index].call

    if @dir_index < 4
      @dir_index += 1
    else
      @dir_index = 0
    end
  end

  def right
    @column_index += 1
    puts "right"
    insert
  end

  def left
    @column_index -= 1
    puts "left"
    insert
  end

  def up
    @row_index += 1
    puts "up"
    insert
  end

  def down
    @row_index -= 1
    puts "down"
    insert
  end

  def insert
    @spiral[@row_index][@column_index] = @nums_to_insert[0]
    @nums_to_insert.shift
    @spiral
  end

end

a = Spiral.new(10)
a.fill_spiral


def sum_diagonals

end