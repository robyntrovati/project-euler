# Project Euler 12 - Highly Divisible Triangular Number (https://projecteuler.net/problem=12)


require 'mathn'
 
def factors(n)
  sum = 1
  n.prime_division.each { |factor| sum *= (factor[1] + 1) }
  sum
end

def triangle_numbers(over_n_divisors)
  triangle_number = 1
  factor_count = 1
  until factors(triangle_number) > over_n_divisors
    factor_count += 1
    triangle_number += factor_count
  end
  triangle_number
end

triangle_numbers(500)


# Impossibly fucking slow
def triangle_numbers(over_n_divisors)
  top = 2
  divisor_count = 1

  loop do
    triangle = (1..top).inject(:+)
    (1..triangle).each do |divisor|
      if triangle % divisor == 0
        divisor_count += 1
        if divisor_count > over_n_divisors
          return triangle
        end
      end
    end
    divisor_count = 0
    top += 1
  end
end