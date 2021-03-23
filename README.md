# Senior iOS Test

You are free to edit what's you want ! It's a base code to help you to start.

GOAL: Manage async job execution in a serial queue: handle success and error, have a look on queue execution...
> Example in a real world: manage print jobs on a printer.

1. Implement given protocols:
  a. An AsyncJob, which implement a Job
  b. a TestQueue which implement a Jobqueue
2. In Job execute() -> generate a async job which print a console log after X seconds. X is Int number between 1 and 10. Job have a timeout error after 5seconds waiting.
3. Complete main func
4. Complete main2 func
5. Comments


# Junior iOS Test

## Test 1

Write a function that compute the sum of the numbers in a given list using a for-loop, foreach-loop, a while-loop, and recursion.

## Test 2

Write a function that combines two lists by alternatingly taking elements. For exemple: given two lists [A, B, C] and [1, 2, 3], the results sould be [A, 1, B, 2, C, 3]

## Test 3

Let's A be a matrix
```
A = [ 2  3  2  1 ]  Allowed moves : → or ↓
    [ 5  2  3  1 ]
    [ 1  2  2  1 ]
width = 4
heigh = 3
```

You can move RIGTH or DOWN.
You cannot move UP or LEFT.

Write a webservice that calculate the highest path sum in a matrix
following this rule (move only RIGTH or DOWN)

## Test 4

Write a function that computes the list of the first n Fibonacci numbers. By definition, the first two numbers in the Fibonacci sequence are 0 and 1, and each subsequent number is the sum of the previous two.

As an example, here are the first 10 Fibonnaci numbers: [0, 1, 1, 2, 3, 5, 8, 13, 21, 34].

## Test 5

Write a function that given a list of non negative integers, arranges them such that they form the largest possible number.

For example, given [50, 2, 1, 9] the largest formed number is 95021.

## Test 6

Write a program that outputs all possibilities to put + or - or nothing between the numbers 1, 2, ..., 9 (in this order) such that the result is always 100.

For example: 1 + 2 + 34 – 5 + 67 – 8 + 9 = 100.
Formatted as "1+2+34-5+67-8+9".

ps: you're on a git, don't forget it ;)
