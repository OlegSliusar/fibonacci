require 'benchmark'
def fibs(n)
  f1 = 0; f2 = 1
  n.times { f1, f2 = f2, f1 + f2 }
  f1
end

def fib3(n, i, j)
  n == 0 ? i : fib3(n - 1, i + j, i)
end

def fibs_rec(n)
  fib3(n, 0, 1)
end

puts "Actual: #{fibs(0)}, should be 0"
puts "Actual: #{fibs(1)}, should be 1"
puts "Actual: #{fibs(2)}, should be 1"
puts "Actual: #{fibs(3)}, should be 2"
puts "Actual: #{fibs(4)}, should be 3"
puts "Actual: #{fibs(5)}, should be 5"
puts "Actual: #{fibs(6)}, should be 8"
puts "Actual: #{fibs(7)}, should be 13"
puts "Actual: #{fibs(8)}, should be 21"

puts "\n\nTesting recurtion method:"
puts "Actual: #{fibs_rec(0)}, should be 0"
puts "Actual: #{fibs_rec(1)}, should be 1"
puts "Actual: #{fibs_rec(2)}, should be 1"
puts "Actual: #{fibs_rec(3)}, should be 2"
puts "Actual: #{fibs_rec(4)}, should be 3"
puts "Actual: #{fibs_rec(5)}, should be 5"
puts "Actual: #{fibs_rec(6)}, should be 8"
puts "Actual: #{fibs_rec(7)}, should be 13"
puts "Actual: #{fibs_rec(8)}, should be 21"
b = Benchmark.measure do
  puts "Actual: #{fibs_rec(39)}, should be 63245986"
end
puts b
