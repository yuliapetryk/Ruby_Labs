class Parcel
  attr_reader :city, :street, :house, :apartment, :addressee, :value

  def initialize (city, street, house, apartment, addressee, value)
    @city = city
    @street = street
    @house =  house
    @apartment = apartment
    @addressee = addressee
    @value = value
  end
end

array_of_parcels = [
  Parcel.new('Kyiv', 'Khreshchatyk', 9, 22, 'Gogol', 1200),
  Parcel.new('Kyiv', 'Khreshchatyk', 9, 22, 'Gogol', 1200),
  Parcel.new('Odesa', 'Shevchenko', 31, 51, 'Shevchenko', 100),
  Parcel.new('Kyiv', 'Holosiivska', 120, 15, 'Petrov', 10000),
  Parcel.new('Odesa', 'Shevchenko', 110, 67, 'Petrenko', 3500),
  Parcel.new('Dnipro', 'Franko', 23, 71, 'Myzyka', 8000),
  Parcel.new('Kyiv', 'Vasylkivska', 455, 92, 'Pysarenko', 100),
  Parcel.new('Lviv', 'Shevchenko', 11, 26, 'Sanyn', 150),
  Parcel.new('Kyiv', 'Vasylkivska', 111, 1, 'Koval', 300)
]

def find_parcels_from_city(array, city)
  res = array.select {|i| i.city == city}
  res.size
end

def find_parcels_with_value(array, value)
  res = array.select {|i| i.value > value}.map{|i| i.city}
  [res.size,  res.uniq]
end

def find_multiple_deliveries(parcels)
  addresses = Hash.new(0)

  parcels.each do |parcel|
    addressee = "#{parcel.addressee}"
    addresses[addressee] += 1
  end
  addresses
end

city = 'Kyiv'
result = find_parcels_from_city(array_of_parcels,city)
puts "Found  #{result} parcels from  #{city}:"

value=1000
result = find_parcels_with_value(array_of_parcels, value)
puts "Found  #{result[0]} parcels with a value of more than  #{value}:"
puts result[1].to_s

result = find_multiple_deliveries(array_of_parcels)
result.each do |addressee, count|
  if count > 1
    puts "#{count} parcels were sent to #{addressee} "
  end
end