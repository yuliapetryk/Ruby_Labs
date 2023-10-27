#5
class Book
  attr_reader :id, :name, :authors, :publication, :year, :pages, :price, :binding

  def initialize (id, name, authors, publication, year, pages, price, binding)
    @id = id
    @name = name
    @authors =  authors
    @publication = publication
    @year =year
    @pages = pages
    @price = price
    @binding = binding
  end

  def has_author?(author_name)
    authors.include?(author_name)
  end

  def to_string
    "Id: " + @id.to_s + "\nName:  " + @name.to_s + "\nAuthors: " + @authors.to_s + "\nPublication: " + @publication.to_s + "\nYear: " + @year.to_s + \
      "\nNumber of pages: " + @pages.to_s + "\nPrice: " + @price.to_s + "\nType of binding: "+@binding.to_s
  end

end

class BooksList

  def initialize
    @books = []
    create_books
  end

  def create_books()
      @books << Book.new(1, 'To Kill a Mockingbird', 'Harper Lee','Random House', 2003,349,450,'hardcover')
      @books << Book.new(2, '1984', 'George Orwell', 'HarperCollins',1999,343,123,'hardcover')
      @books << Book.new(3, 'Pride and Prejudice', 'Jane Austen', 'Hachette Book Group',2013,111,500,'paperback')
      @books << Book.new(4, 'The Great Gatsby', ' F. Scott Fitzgerald', 'Scholastic Corporation',2009,653,680,'paperback')
      @books << Book.new(5, 'Good Omens', ['Neil Gaiman', 'Terry Pratchett'] , 'Virago Press',2021,355,345,'spiral')
      @books << Book.new(6, 'Brave New World', 'Aldous Huxley', 'Vintage Books',2017,5545,345,'spiral')
      @books << Book.new(7, 'The Catcher in the Rye', 'J.D. Salinger', 'Bloomsbury Publishing ',2006,344,345,'hardcover')
      @books << Book.new(8, 'Animal Farm', 'George Orwell', 'Hachette UK',2008,754,654,'paperback')
      @books << Book.new(9, 'Neverwhere', ['Neil Gaiman','Lenny Henry'], 'Oxford University Press',2008,433,345,'hardcover')
    end

  def find_books_by_author( author_name)
    @books.select { |book| book.has_author?(author_name) }
  end

  def find_books_by_publishing_house( publication_name)
    @books.select { |book| book.publication == publication_name}
  end

  def find_books_by_year( year)
    @books.select { |book| book.year > year}
  end

end

def print(books)
  books.each do |book|
    puts book.to_string
    puts
  end
  puts
end

books_list = BooksList.new
author = 'George Orwell'
result = books_list.find_books_by_author(author)
puts "List of books written by #{author}:"
print(result)

publication_name = 'HarperCollins'
result = books_list.find_books_by_publishing_house(publication_name)
puts "List of books published by #{publication_name}:"
print(result)

year = 2020
result = books_list.find_books_by_year(year)
puts "List of books published after #{year}:"
print(result)

