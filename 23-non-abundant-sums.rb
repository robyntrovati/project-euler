# Project Euler 23 - Non-abundant Sums (https://projecteuler.net/problem=23)


def abundant?(n)
  n < (1...n).select { |d| n % d == 0 }.inject(:+)
end