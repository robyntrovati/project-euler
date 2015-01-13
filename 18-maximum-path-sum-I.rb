# Project Euler 18 - Maximum Path Sum (https://projecteuler.net/problem=18)


triangle = <<FUCKERY
75
95 64
17 47 82
18 35 87 10
20 04 82 47 65
19 01 23 75 03 34
88 02 77 73 07 63 67
99 65 04 28 06 16 70 92
41 41 26 56 83 40 80 70 33
41 48 72 33 47 32 37 16 94 29
53 71 44 65 25 43 91 52 97 51 14
70 11 33 28 77 73 17 78 39 68 17 57
91 71 52 38 17 14 91 43 58 50 27 29 48
63 66 04 68 89 53 67 30 73 16 69 87 40 31
04 62 98 27 23 09 70 98 73 93 38 53 60 04 23
FUCKERY


class MaximumPath

  attr_accessor :row_index, :column_index
  
  PATH = []
  
  def initialize(triangle)
    @triangle = triangle.split("\n").map { |row| row.split(' ').map { |n| n.to_i } }
    @row_index, @column_index = 0, 0
    PATH << current_node
  end

  def current_node
    @triangle[row_index][column_index]
  end

  def left
    @triangle[row_index+1][column_index]
  end

  def right
    @triangle[row_index+1][column_index+1]
  end

  def move
    if left > right
      self.row_index += 1
      PATH << current_node
    else
      self.row_index += 1
      self.column_index += 1
      PATH << current_node
    end
  end

  def max_sum
    while row_index <= @triangle.length - 2
      move
    end
    PATH.inject(:+)
  end

end


a = MaximumPath.new(triangle).max_sum
