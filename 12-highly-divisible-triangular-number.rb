# Project Euler 12 - Highly Divisible Triangular Number (https://projecteuler.net/problem=12)


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

triangle_numbers(500)