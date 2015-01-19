# Project Euler 24 - Lexicographic Permutations (https://projecteuler.net/problem=24)


def permutate(nums, nthpermutation)
  nums.permutation(10).to_a[nthpermutation-1]
end

permutate([0,1,2,3,4,5,6,7,8,9], 1000000)