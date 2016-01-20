#!/usr/bin/env ruby

=begin
Instructions of the problems

Write a function fibo(n) that returns the first n fibonacci numbers in an array

Example:

fibo(8)
# => [0,1,1,2,3,5,8,13]

=end


def fibo(n)
  first_num = 0
  second_num = 1
  a = []
  a << first_num << second_num
  a = auxiliary_fibo(a, first_num, second_num, n)
  puts a.inspect
end

# a is the array where the numbers are being stored, 
# b and c are the previous numbers
# n is the first n numbers
def auxiliary_fibo(a, b, c, n)
  if a.size ==  n
    return a
  else
    d = b + c
    a << d
    auxiliary_fibo(a, c, d, n)
  end
end

# we call the method
fibo(8)
fibo(9)
fibo(10)


