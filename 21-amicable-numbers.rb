# Let d(n) be defined as the sum of proper divisors of n (numbers less than n which divide evenly into n).
# If d(a) = b and d(b) = a, where a ≠ b, then a and b are an amicable pair and each of a and b are called amicable numbers.

# For example, the proper divisors of 220 are 1, 2, 4, 5, 10, 11, 20, 22, 44, 55 and 110; therefore d(220) = 284. 
# The proper divisors of 284 are 1, 2, 4, 71 and 142; so d(284) = 220.

# Evaluate the sum of all the amicable numbers under 10000.

# not correct
def sum_proper_divisors(n)
  (1...n).select { |d| n % d == 0 }.inject(:+)
end

def amicable?(n)      
  a = sum_proper_divisors(n)
  b = sum_proper_divisors(a)
  n != a && n == b
end

def sum_amicable_under(limit)
  (2...limit).select { |n| amicable?(n) }.inject(:+)
end
  
sum_amicable_under(10000)