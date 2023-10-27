#15
def function(a, b, c, x)
  result= 99999999 #infinity
    if x < 0 && b != 0
      result = -a * x ** 2 + b
    elsif x > 0 && b == 0
      if x - c !=0
        result = (x) / (x - c) + 5.5
      end
    else
       if c != 0
       result = x / (-c)
       end
    end
  if ((a.to_i | b.to_i | c.to_i)) == 1
    result.to_i
  else
    result.to_f
  end
end

def start(a, b, c, x0, x1, step)
  if x0 >= x1
    puts "The start of the interval cannot be greater than or equal to the end of the interval"
  else
    x0.step(x1, step) do|x|
      puts "x = " + x.to_s+ "; f(x) = " + function(a, b, c, x).to_s
    end
  end
end

puts "Enter a,b,c:\n"
a = gets.chomp.to_f
b = gets.chomp.to_f
c = gets.chomp.to_f

puts "Enter step:\n"
step = gets.chomp.to_f.abs

puts "Enter the start of the interval:\n"
x0 = gets.chomp.to_f
puts "Enter end of interval:\n"
x1 =gets.chomp.to_f

start(a, b, c, x0, x1, step)
