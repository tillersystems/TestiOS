# Senior iOS Test

You are free to edit whatever you want ! It is a base code to help you get started.

GOAL: Manage async job execution in a serial queue: handle success and error, have a look on queue execution...
> Example in a real life : manage print jobs on a printer.

**Check the playground to understand the following instructions.**

1. Implement the given protocols:
  * a An `AsyncJob`, which implement a `Job`
  * b. a `TestQueue` which implement a `JobQueue`
2. In Job `execute()` -> generate an async job which prints a console log after X seconds. X is an Int number between 1 and 10. The Job triggers a timeout error after 5 seconds.
3. Complete *main* func
4. Complete *main2* func
5. Comments


# Junior iOS Test

## Test 1

Write a function that computes the sum of the numbers in a given list using a for-loop, foreach-loop, a while-loop, and recursion.

## Test 2

Write a function that combines two lists by alternatively taking elements in each list. For exemple: given these two lists [A, B, C] and [1, 2, 3], the results sould be [A, 1, B, 2, C, 3]

## Test 3

Let A be a matrix
```
A = [ 2  3  2  1 ]  Allowed moves : → or ↓
    [ 5  2  3  1 ]
    [ 1  2  2  1 ]
width = 4
height = 3
```

You can move RIGTH or DOWN.
You cannot move UP or LEFT.

Write a webservice that calculate the highest path sum in the matrix
following this rule (move only RIGTH or DOWN)

## Test 4

Write a function that computes the list of the first n Fibonacci numbers. By definition, the first two numbers in the Fibonacci sequence are 0 and 1, and each subsequent number is the sum of the previous two.

As an example, here are the first 10 Fibonnaci numbers: [0, 1, 1, 2, 3, 5, 8, 13, 21, 34].

## Test 5

Write a function that given a list of non negative integers, arranges them such as it forms the greatest number possible.

For example, given [50, 2, 1, 9] the greatest formed number is 95021.

## Test 6

Write a program that outputs all possibilities to put + or - or nothing between the numbers 1, 2, ..., 9 (in this order) such that the result is always 100.

For example: 1 + 2 + 34 – 5 + 67 – 8 + 9 = 100.
Formatted as "1+2+34-5+67-8+9".

PS: you're on a git, don't forget it ;)
