require 'test/unit'
require_relative '../task2'

class TestTask2< Test::Unit::TestCase

  def setup
    @books_list = BooksList.new
  end

  def test1_find_books_by_author
    author='George Orwell'
    result =@books_list.find_books_by_author(author).map{|i| [i.name]}
    expected_result = [['1984'],['Animal Farm']]
    assert_equal expected_result, result
  end

  def test2_find_books_by_author
    author='Taras Shevchenko'
    result =@books_list.find_books_by_author(author).map{|i| [i.name]}
    expected_result = []
    assert_equal expected_result, result
  end

  def test1_publishing_house
    publication_name = 'HarperCollins'
    result = @books_list.find_books_by_publishing_house(publication_name).map{|i| [i.name]}
    expected_result = [['1984']]
    assert_equal expected_result, result
  end

  def test2_publishing_house
    publication_name = 'Vanat'
    result = @books_list.find_books_by_publishing_house(publication_name).map{|i| [i.name]}
    expected_result = []
    assert_equal expected_result, result
  end

  def test1_find_books_by_year
    year = 2010
    result = @books_list.find_books_by_year(year).map{|i| [i.name]}
    expected_result = [['Pride and Prejudice'],['Good Omens'],['Brave New World']]
    assert_equal expected_result, result
  end

  def test2_find_books_by_year
    year = 2023
    result = @books_list.find_books_by_year(year).map{|i| [i.name]}
    expected_result = []
    assert_equal expected_result, result
  end

end