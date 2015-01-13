# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17. Find the sum of all the primes below two million.


def prime?(number)
  (2..(Math.sqrt(number))).each { |d| return false if number % d == 0 }
end

def sum(limit)
  (2...limit).select { |n| prime?(n) }.inject(:+)
end

sum(2000000)


# OR

require 'mathn'

def sum_of_primes(limit)
  Prime.take(limit-1).inject(:+)
end