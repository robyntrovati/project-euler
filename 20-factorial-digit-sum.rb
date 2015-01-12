# Project Euler 20 - Factorial Digit Sum (https://projecteuler.net/problem=20)


def factorial_sum(n)
  n = 100
  factorial = [n]
  while n > 1
    n -= 1
    factorial << n
  end
  factorial.inject(:*).to_s.split(//).map { |num| num.to_i }.inject(:+)
end

factorial(100)