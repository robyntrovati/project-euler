# A Pythagorean triplet is a set of three natural numbers, a < b < c, for which a2 + b2 = c2

# There exists exactly one Pythagorean triplet for which a + b + c = 1000. Find the product abc.


def find_triplet_product(n)
  min = Math.sqrt(n).to_i
  max = n / 2
  sum = 0

  while sum <= n
    (min..max).each do |a|
      ((a + 1)..max).each do |b|
        c = Math.sqrt(a**2 + b**2)
        sum = a + b + c
        if sum == n && (a**2 + b**2 == c**2)
          return a * b * c
        end 
      end
    end
  end
end