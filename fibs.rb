def fibs(n)
  output = Array.new
  i = 0
  last_fib = 0
  current_fib = 0
  next_fib = 1
  
  while i <= n
    output.push(current_fib)
    last_fib = current_fib
    current_fib = next_fib
    next_fib = last_fib + current_fib
    i += 1
  end
  output
end

def fibs_recursive(n)
  if n < 2
    return n
  else
    return (fibs_recursive(n-1) + fibs_recursive(n-2))
  end
  
end

p fibs(10)

p fibs_recursive(0)
p fibs_recursive(1)
p fibs_recursive(2)
p fibs_recursive(3)
p fibs_recursive(4)
p fibs_recursive(5)
p fibs_recursive(6)
p fibs_recursive(7)
p fibs_recursive(8)
p fibs_recursive(9)
p fibs_recursive(10)