# Lab 5 Task 1 Variant 4

def rectangle(a, b, n)
  h =  (b - a) / n
  x = a + h  / 2
  sum = 0
  (1..n).each {
    y = yield(x)
    sum +=h  * y
    x +=h
  }
  return sum
end

def trapezoid(a, b, n)
  h = (b - a) / n
  x = a +h
  sum = h  * (yield(a) / 2 - yield(b) / 2)
  loop {
    y = yield(x)
    sum +=h  * y
    x +=h
    break if x > b
  }
  return sum
end

def f1(x)
  return (x*Math.sqrt(1+x) )
end

def f2(x)
  return (1 / (x* Math.log(x)**2))
end

def print_result(result)
  puts "Result: ", result, "\n"
end

a1=1.0
b1=8.0

a2=2.0
b2=2.7

n=10000

result = rectangle(a1, b1, n) {|x| f1(x)}
print_result(result)

result = trapezoid(a1, b1, n) {|x| f1(x)}
print_result(result)

result = rectangle(a2, b2, n) {|x| f2(x)}
print_result(result)

result = trapezoid(a2, b2, n) {|x| f2(x)}
print_result(result)