# The prime factors of 13195 are 5, 7, 13 and 29. What is the largest prime factor of the number 600851475143?

def largest_prime_factor(n)
  factor = 0
  divisor = 2
  until n == 1
    if n % divisor == 0
      factor = divisor
      n /= divisor
    end
    divisor += 1
  end
  factor
end

largest_prime_factor(600851475143)

# OR

require 'mathn'

def largest_prime_factor(n)
  n.prime_division[-1][0]
end