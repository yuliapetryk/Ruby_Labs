def function_y(n, c, x)
  return ((x**(1/n)+c**(1/n))**2)/((x-c)/(Math.sqrt(1/x)+n*Math.sqrt(1/c)))
end

def function_z(n,c,x)
  return Math.sin(2*x)**2-Math.cos(Math::PI/3-2*x)*Math.sin(2*x-Math::PI/6)-1/(Math.tan((Math::PI+x)/x+1)**(2/x))
end

def print_y(n, c)
  (1..n).step((n - 1).to_f / (n + c)) do |i|
    print "Y: #{function_y(n,c,i)}\n"
  end
end

def print_z(n, c)
  pi=Math::PI
  (pi/n..pi).step((pi-(pi/n)).to_f / ((3/2)*n + c)) do |i|
     print "Z: #{function_z(n,c,i)}\n"
  end
end

def print_z_y(n, c)
  (2..c).step((c-2).to_f / (2*n)) do |i|
    case i
    when 2..n
      print "Z+Y: #{function_y(n,c,i)}\n"
    when n..2*n
      print "Z+Y: #{function_z(n,c,i)}\n"
    end
  end
end


print_y(2,10)
print_z(2,10)
print_z_y(2,10)