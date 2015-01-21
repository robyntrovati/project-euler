# Project Euler 29 - Distinct Powers (https://projecteuler.net/problem=29)


def distinct_powers(low, high)
  coefficients = (low..high).to_a
  powers = (low..high).to_a
  results = []
  
  coefficients.each do |n|
    powers.each do |power|
      results << n**power
    end
  end
  results.uniq.length
end

distinct_powers(2, 100)