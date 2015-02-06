# Surprisingly there are only three numbers that can be written as the sum of fourth powers of their digits:

# 1634 = 1^4 + 6^4 + 3^4 + 4^4
# 8208 = 8^4 + 2^4 + 0^4 + 8^4
# 9474 = 9^4 + 4^4 + 7^4 + 4^4
# As 1 = 1^4 is not a sum it is not included.

# The sum of these numbers is 1634 + 8208 + 9474 = 19316.

# Find the sum of all the numbers that can be written as the sum of fifth powers of their digits.


def sum_of_powers(power)
  n = 2
  yup = []
  loop do
    if n.to_s.length > 1
      sum = n.to_s.chars.map { |i| i**power }.inject(:+)
    else
      sum = n**power
    end

    if n == sum
      yup << n
    end
    n += 1
  end
end