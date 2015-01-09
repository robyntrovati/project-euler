# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99. Find the largest palindrome made from the product of two 3-digit numbers.


def largest_palindrome_product
  palindromes = []
  (100..1000).each do |num|
    product = num * num.next
    if product = product.to_s.reverse.to_i
      palindromes << product
    end
  end
  
  palindromes.sort
  palindromes[-1]
end