# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17. Find the sum of all the primes below two million.


def prime?(number)
  (2..(Math.sqrt(number))).each do |divisor|
    return false if number % divisor == 0
  end
  true
end

def sum(limit)
  primes = []
  (2...limit).each do |number|
    if prime?(number)
      primes << number
    end
  end
  primes.inject(:+)
end

sum(2000000)