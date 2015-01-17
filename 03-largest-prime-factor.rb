# The prime factors of 13195 are 5, 7, 13 and 29. What is the largest prime factor of the number 600851475143?


def largest_prime_factor(n)
  factors = []
  divisor = 2
  until n == 1
    if n % divisor == 0
      factors << divisor
      n /= divisor
    end
    divisor += 1
  end
  factors[-1]
end

largest_prime_factor(600851475143)