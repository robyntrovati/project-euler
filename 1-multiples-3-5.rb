# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
# Find the sum of all the multiples of 3 or 5 below 1000.


def collect_multiples(limit)
  numbers = (3...limit)
  @multiples = []
  numbers.select do |number|
    if number % 3 == 0 || number % 5 == 0
      @multiples << number
    end
  end
end

def sum_multiples(n)
  collect_multiples(n)
  # @multiples.inject{|sum, x| sum + x}
  @multiples.inject(:+)
end

sum_multiples(1000)