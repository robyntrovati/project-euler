# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder. What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?


def evenly_divisible?(n)
  (1..20).each { |i| return false if n % i != 0 }
end

def smallest_multiple
  n = 2520
  loop do
    if evenly_divisible?(n)
      return n
    else
      n += 20
    end  
  end  
end