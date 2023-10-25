def modifyArray(arr)
  zero_elements = []
  negative_elements = []
  positive_elements = []

  arr.each_with_index {
    |element|
    if (element < 0)
      negative_elements.push(element)
    elsif (element > 0)
      positive_elements.push(element)
    else
      zero_elements.push(element)
    end
  }

  return zero_elements + negative_elements +  positive_elements
end

def initArray(len)
  rand = Random.new(Time.now.nsec)
  arr = []
  len.times {
    arr.push(rand.rand(-6..6))
  }
  return arr
end

arr = initArray(20)
puts "Before: #{arr}"
puts "After: #{modifyArray(arr)}"