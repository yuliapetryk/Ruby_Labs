require 'test/unit'
require_relative '../task1'

class TestTask1 < Test::Unit::TestCase

  def test_1
    result = function(2, 3, 4, -1.0)
    assert_equal 1.0, result
  end

  def test_2
    result = function(2, 0, 4, 2.0)
    assert_equal 4.5, result
  end

  def test_3
    result = function(2, 0, 2, 2.0)
    assert_equal 99999999.0, result
  end

  def test_4
    result = function(2, 3, 0, 1.0)
    assert_equal 99999999.0, result
  end

  def test_5
    result = function(0, 1, 1, 1.0)
    assert_equal -1, result
  end

  def test_6
    result = function(0, 0, 0, 1.0)
    assert_equal 6.5, result
  end

  def test_7
    result = function(1, 0, 1, 1.2)
    assert_equal 11, result
  end

  def test_8
    result = function(1, 0, 1, 1.0)
    assert_equal 99999999, result
  end

end