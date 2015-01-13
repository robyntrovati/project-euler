# Project Euler 14 - Longest Collatz Sequence (https://projecteuler.net/problem=14)


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