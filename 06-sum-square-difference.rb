# The sum of the squares of the first ten natural numbers is 1^2 + 2^2 + ... + 10^2 = 385
# The square of the sum of the first ten natural numbers is (1 + 2 + ... + 10)^2 = 55^2 = 3025
# Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 − 385 = 2640. Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.


def sum_sqaure_difference(limit)
  numbers = (1...limit)
  squares = []
  numbers.each { |number| squares << number**2 }
  numbers.inject(:+)**2 - squares.inject(:+)
end

sum_sqaure_difference(100)