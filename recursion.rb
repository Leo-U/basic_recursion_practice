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