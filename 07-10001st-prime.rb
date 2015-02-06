# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13. 

# What is the 10001st prime number?


def prime?(number)
  (2..Math.sqrt(number)).each { |d| return false if number % d == 0 }
end
 
def nth_prime(n)
  number = 3
  i = 1
  loop do
    i += 1 if prime?(number)
    return number if i == n
    number += 2
  end
end

nth_prime(10001)

# OR

require 'mathn'

def nth_prime(n)
  Prime.take(n).last
end