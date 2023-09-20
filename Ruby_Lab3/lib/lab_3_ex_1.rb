
def calculate_expression1(a,b,c, x, y,z)
  print "1. \n"
  print "a) #{!(a || b) && ( a && (!b))} \n"
  print "b) #{ (z != y).object_id <= (6 >= y).object_id && a || b && c && x >= 1.5} \n"
  print "c) #{(8-x*2<=z) && (x**2!=y**2)||(z>=15)} \n"
  print "d) #{x>0 && y<0 || z >= (x * y+(-y / x)) - (-z)} \n"
  print "e) #{!(a || b && !(c || (!a || b)))} \n"
  print "f) #{x**2 + y**2 >= 1 && x>=0 && y>=0} \n"
  print "g) #{(a && (c && b != b || a) || c) && b} \n"
end

def calculate_expression2(x,p)

  print "2. #{( (Math.log(x+1)>x) || !p ) && ( Math.sqrt(x.abs) < x**2+x) || (2*x == x)} \n"

end

a=true
b=true
c=true
x=-40
y=6
z=-12
calculate_expression1(a,b,c,x, y,z)

x=-0.5
p=true
calculate_expression2(x, p)