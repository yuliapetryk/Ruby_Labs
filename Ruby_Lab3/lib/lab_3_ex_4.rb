EPSILON = 0.00001

def factorial n
  n > 1 ? n * factorial(n - 1).to_f : 1
end

def calculate_sum1
  result=0.0
  n=2
  number=1.0

  while number > EPSILON
    number=(factorial(n-1)/factorial(n+1))**(n*(n+1)).to_f
    result+=number
    n+=1
  end
  return result
end

def calculate_sum2
  result=0.0
  n=1
  number=1

  while number > EPSILON
    number=1/((2*n-1)*(2*n+1)).to_f
    result+=number
    n+=1
  end
  return result
end

def calculate_sum3
  result=0.0
  n=1
  number=1.0

  while number > EPSILON
    number=(factorial(4*n-1)*factorial(n+1))/(factorial(3*n)*(3**(2*n))*factorial(2*n)).to_f
    result+=number
    n+=1
  end
  return result
end

print "1) Result: #{calculate_sum1} \n"
print "2) Result: #{calculate_sum2} \n"
print "3) Result: #{calculate_sum3} \n"
