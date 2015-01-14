# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99. 

# Find the largest palindrome made from the product of two 3-digit numbers.


def largest_palindrome_product
  largest_product = 0
  (100..999).each do |num1|
    (num1..999).each do |num2|
      product = num1 * num2
      if product.to_s == product.to_s.reverse && product > largest_product
        largest_product = product
      end
    end
  end
  largest_product
end