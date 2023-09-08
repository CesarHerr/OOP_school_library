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

  def save_books_to_json
    json_data = @books.map { |book| { title: book.title, author: book.author } }
    File.write('books.json', JSON.pretty_generate(json_data))
  end

  def load_books_from_json
    return unless File.exist?('books.json')

    begin
      json_data = JSON.parse(File.read('books.json'))
      @books = [] # clean book list
      json_data.each do |book_data|
        book = Book.new(book_data['title'], book_data['author'])
        @books << book
      end
    end
  end
end
