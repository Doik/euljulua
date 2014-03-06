#!/usr/bin/env lua

-- 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
-- What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?


solution = false
i = 2520

-- 670442572800
-- 232792560

function is_solution(num)
    for j=20, 11, -1 do
        if num % j > 0 then
            return false
        end
    end
    return true
end

while not solution do
    if is_solution(i) then
        break
    else
        i = i + 2
    end
end

print(i)