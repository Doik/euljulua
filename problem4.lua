#!/usr/bin/env lua

-- A palindromic number reads the same both ways.
-- The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
-- Find the largest palindrome made from the product of two 3-digit numbers.

function is_palindrome(str)
    len = str:len()
    res = true
    i = 1
    while res and i <= math.floor(len/2) do
        res = (str:sub(i,1) == str:sub(len+1-i, 1))
        i = i + 1
    end
    return res
end

function find_palimdrome(max, min)
    pal = 0
    max_palin = 0
    n1 = max
    while n1 > min do
        n2 = max
        while n2 >= n1 do
            prod = n1 * n2
            if prod > max_palin then
                prod_str = tostring(prod)
                if is_palindrome(prod_str) then
                    max_palin = prod
                end
            end
            n2 = n2 - 1
        end
        n1 = n1 - 1
    end
    return max_palin
end

foo = find_palimdrome(999, 100)

print(foo)
