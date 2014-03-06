#!/usr/bin/env lua

-- The sum of the squares of the first ten natural numbers is,
-- 1^2 + 2^2 + ... + 10^2 = 385
-- The square of the sum of the first ten natural numbers is,
-- (1 + 2 + ... + 10)^2 = 552 = 3025
-- Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 − 385 = 2640.
-- Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

function calc(max)
    squaresum = 1
    sum = 1
    for i=2, max do
        squaresum = squaresum + math.pow(i, 2)
        sum = sum + i
    end
    return math.pow(sum, 2) - squaresum
end

foo = calc(100)

print(foo)
