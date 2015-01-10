# The sum of the squares of the first ten natural numbers is 1^2 + 2^2 + ... + 10^2 = 385
# The square of the sum of the first ten natural numbers is (1 + 2 + ... + 10)^2 = 55^2 = 3025
# Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 − 385 = 2640. Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.


def sum_sqaure_difference(limit)
  numbers = (1...limit)
  squares = []

  numbers.each do |number|
    squares << number ** 2
  end

  sum_of_squares = squares.inject(:+)
  square_of_sum = numbers.inject(:+) ** 2
  difference = square_of_sum - sum_of_squares
end

sum_sqaure_difference(100)