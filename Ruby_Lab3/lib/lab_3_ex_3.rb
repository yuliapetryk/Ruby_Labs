def factorial(n)
  if n == 0
    return 1
  else
    return n * factorial(n-1)
  end
end

result=0.0

for i in 0..8 do
  result += 1/(3**i).to_f
end

print"2) Result:  #{result} \n"

puts "Input n "
n = gets.chomp.to_i

result=0.0
x=1.0

for i in 0..n do
  result += x**i/factorial(i).to_f
end

print"3) Result:  #{result} \n"

