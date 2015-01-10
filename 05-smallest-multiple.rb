# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder. What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?


# Too slow

# def smallest_multiple
#   number = 2520
#   until (1..20).all? { |x| number % x == 0 }
#     number += 1
#   end
#   number
# end


def evenly_divisible?(n)
  (1..20).each do |i|
    if n % i != 0
      return false
    end
  end  
  true
end

def smallest_multiple
  n = 2520
  while true
    if evenly_divisible?(n)
      return n
    else
      n += 20
    end  
  end  
end