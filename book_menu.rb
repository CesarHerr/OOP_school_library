require_relative 'book'

class BookMenu
  attr_accessor :books

  def initialize
    @books = []
  end

  def list_books
    if @books.empty?
      puts "\nThis is empty!! :("
    else
      puts "\nList all books"
      @books.each_with_index do |element, index|
        puts "#{index}) Title:#{element.title}, Author:#{element.author}"
      end
    end
  end

  def create_book
    print 'Title:'
    title = gets.chomp

    print 'Author:'
    author = gets.chomp

    book = Book.new(title, author)
    @books.push(book)
    puts "\nBook created successfully"
  end
end
