puts 'Input x'
$x=gets.chomp.to_f

puts 'Input a'
$a=gets.chomp.to_f

puts 'Input fi, gamma'
$fi=gets.chomp.to_f
$ga=gets.chomp.to_f


$r= Math.exp(Math.sin(Math::PI**2).abs)*((Math.log(1+Math.cos($a)**2)+Math.tan(Math.sin($x))+4.8*(10**1.3))/5*Math.sqrt($fi+$ga))
puts 'Result: '+ $r.to_s
