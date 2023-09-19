def toBinary(number)
  binary = ""
  while number > 0
    binary = (number % 2).to_s + binary
    number = number / 2
  end
  return binary
end

  number = 222
  binary = toBinary(number)
puts 'Result: '+ binary.to_s
