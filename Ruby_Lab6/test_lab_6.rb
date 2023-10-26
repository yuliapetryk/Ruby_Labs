require 'test/unit'
require_relative 'lab_6'

class TestLab < Test::Unit::TestCase

  def setup
    @parcels = [
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
  end

  def test_find_parcels_from_city
    result = find_parcels_from_city(@parcels, 'Kyiv')
    assert_equal 5, result
  end

  def test_find_parcels_with_value
    result = find_parcels_with_value(@parcels, 5000)
    assert_equal [2, ['Kyiv', 'Dnipro']], result
  end

  def test_find_multiple_deliveries
    result = find_multiple_deliveries(@parcels)
    assert_equal({'Gogol' => 2}, result)
  end
end
