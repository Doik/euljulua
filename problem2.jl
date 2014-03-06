#!/usr/bin/env julia

# Each new term in the Fibonacci sequence is generated by adding the previous two terms. By starting with 1 and 2, the first 10 terms will be:
# 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
# By considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the even-valued terms.

even = 0

function fib(n1, n2)
    global even
    sum = n1 + n2
    if sum <= 4000000
        if sum % 2 == 0
            even += sum
        end
        fib(n2, sum)
    end
end

fib(0, 1)

println(even)