#!/usr/bin/env julia

# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
# Find the sum of all the primes below two million.

println(sum(primes(2000000)))
