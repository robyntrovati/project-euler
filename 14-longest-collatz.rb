# The following iterative sequence is defined for the set of positive integers:

# n → n/2 (n is even)
# n → 3n + 1 (n is odd)

# Using the rule above and starting with 13, we generate the following sequence: 13 → 40 → 20 → 10 → 5 → 16 → 8 → 4 → 2 → 1

# It can be seen that this sequence (starting at 13 and finishing at 1) contains 10 terms. Although it has not been proved yet (Collatz Problem), it is thought that all starting numbers finish at 1. Which starting number, under one million, produces the longest chain? Once the chain starts the terms are allowed to go above one million.


def collatz(n)
  n % 2 == 0 ? n / 2 : 3 * n + 1
end

def sequence_length(n)
  sequence_length = 1
  while n > 1
    next_num = collatz(n)
    sequence_length += 1
    n = next_num
  end
  sequence_length
end

def longest_sequence_below(n)
  longest_sequence = 0
  num_with_longest_sequence = nil
  (1..n-1).each do |n|
    sequence_length = sequence_length(n)
    if sequence_length > longest_sequence
      longest_sequence = sequence_length
      num_with_longest_sequence = n
    end
  end
  num_with_longest_sequence
end

longest_sequence_below(1000000)