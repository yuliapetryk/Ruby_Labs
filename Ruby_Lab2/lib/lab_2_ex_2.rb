def findRange(p, t, r)
   p**r*(1 - p**(-1*t))
end

  p=2
  r=8
  t=32
result = findRange(p,t,r)
print result.to_i.to_s