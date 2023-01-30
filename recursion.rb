#first, write a non-recursive method that sums the range of 1 through n from given input `n`.

def sum_range(n)
  total = n
  i = n
  while i > 0 do
    i -= 1
    total += i
    puts total
  end
  total
end

# now, write a recursive version.

def sum_range_rec(n, total = 0)
  total += n
  return total if n == 1
  n -= 1
  sum_range_rec(n, total)
end