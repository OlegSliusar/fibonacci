def fibs(n)
  f1 = 0
  f2 = 1
  (n).times do |i|
    tmp = f1 + f2
    f1 = f2
    f2 = tmp
  end
  f1
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
