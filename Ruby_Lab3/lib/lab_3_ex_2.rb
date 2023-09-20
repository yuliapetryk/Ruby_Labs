def calculate_case(x)
  case x
    when -4..0
      y=( (x-2).abs / ((x**2) * Math.cos(x)))**(1.0/7.0)
      print "a"
    when 1..12
      y=1/( (Math.tan(x+1 / Math.exp(x))) / Math.sin(x)**2) ** (1/3.5)
      print "b"
    when (x < 4) || (x > 12)
      y=1 / (1 + (x / (1+ (x / 1+x) ) ) )
      print "c"
  end
  return y
end


x=1
print "Result:  #{calculate_case(x)}"