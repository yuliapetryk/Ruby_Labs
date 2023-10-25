def calculate_row(x, n)
  sum = 0
  for i in 0..n
    sum+=function(x, i)
  end
  return sum
end

def function(x, i)
  (-1)**i*(x**(2*i+1)/(2*i+1))
end

def calculate_row_with_epsilon(x, epsilon)
  sum = function(x,0)
  i=1
  while function(x, i).abs >= epsilon do
    sum+=function(x, i)
    i+=1
  end
  return i
end

x = 0

while x < 0.1 || x > 1
  puts "Enter x from 0.1 to 1: "
  x = gets.chomp.to_f
  if x < 0.1 || x > 1
    puts "Wrong x! Enter the value between 0.1 and 1"
  end
end

n=0
while n < 15 || n > 58
  puts "Enter n from 15 to 58: "
  n = gets.chomp.to_i
  if n < 15 || n > 58
    puts "Wrong x! Enter the value between 15 and 58"
  end
end

puts "The result is:", calculate_row(x, n)

epsilon = 0.001
puts "%{iterations} iterations were needed to achieve accuracy of %{epsilon}" % {iterations: calculate_row_with_epsilon(x, epsilon), epsilon: epsilon}