p (1..20).inject( [0, 1] ) { | fib_elem | fib_elem << fib_elem.last(2).inject(:+) }