#the following imitates https://www.youtube.com/watch?v=6oDQaB2one8 (What Is Recusrion - In Depth by Web Dev Simplified) with code in Ruby rather than JS.

#first, write a non-recursive method that sums the range of 1 through n from given input `n`.

def sum_range(n)
  total = n
  i = n
  while i > 0 do
    i -= 1
    total += i
  end
  total
end

# now, write a recursive version.

def sum_range_rec(n, total = 0)
  return total if n <= 0
  sum_range_rec(n - 1, total + n)
end

# write recursive method that prints children from the below nested hash:

tree = {
  name: 'John',
  children: [
    {
      name: 'Jim',
      children: []
    },
    {
      name: 'Zoe',
      children: [
        { name: 'Kyle', children: []},
        { name: 'Sophia', children: []}
      ]
    }
  ]
}

def print_children_recursive(t)
  t[:children].each do |el|
    p el[:name]
    print_children_recursive(el)
  end
end

# define a method that calculates factorial of input integer.

def calc_fact(n)
  return 1 if n <= 1
  n * calc_fact(n - 1)
end

# the Collatz conjecture is for positive integers; basically you can always return 1 by doing the following:

# if n  = 1, return 1
# if n is even, do n/2
# if n is odd, do 3n + 1

# write a recursive function that calculates how many steps it takes to get to 1.

def collatz(n, count = 0)
  return count if n == 1
  n.even? ? collatz(n / 2, count + 1) : collatz(n * 3 + 1, count + 1)
end

# Define a recursive function that takes an argument n and prints "n bottles of beer on the wall", "(n-1) bottles of beer on the wall", ..., "no more bottles of beer on the wall".

def bottles(n)
  if n <= 0
    puts "no more bottles"
    return
  else
    puts "#{n} bottles of beer"
    bottles(n - 1)
  end
end

# Define a recursive function that takes an argument n and returns the fibonacci value of that position. The fibonacci sequence is 0, 1, 1, 2, 3, 5, 8, 13, 21... So fib(5) should return 5 and fib(6) should return 8.

# my solution:
def return_fib_value(n, a = 0, b = 1)
  return b if n == 1
  return a if n == 0
  return_fib_value(n - 1, b, a + b)
end

# standard/correct solution:
def fib(n)
  if n == 0
    0
  elsif n == 1
    1
  else
    fib(n-1) + fib(n-2)
  end
end