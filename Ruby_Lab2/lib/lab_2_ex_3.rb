def toDecimal(number)
  decimal = 0
  number.reverse.each_char.with_index do |bit, index|
    decimal += bit.to_i * (2 ** index)
  end
  return decimal
end

number = "1111100011101"
decimal = toDecimal(number)
puts 'Result: ' + decimal.to_s