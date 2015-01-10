# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
# Find the sum of all the multiples of 3 or 5 below 1000.


class SumMultiples

  def initialize(limit)
    @limit = limit
    @start = 3
    @multiples = []
  end

  def collect_multiples
    (@start...@limit).select do |n|
      if n % 3 == 0 || n % 5 == 0
        @multiples << n
      end
    end
  end

  def sum_multiples
    collect_multiples
    @multiples.inject(:+)
  end

end

a = SumMultiples.new(1000)
a.sum_multiples