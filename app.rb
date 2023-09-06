require 'json'
require_relative 'book_menu'
require_relative 'person_menu'
require_relative 'rentals_menu'

class App
  attr_accessor :books, :people, :rentals, :books_modified

  def initialize
    @books = BookMenu.new
    @people = People.new
    @rentals = RentalMenu.new(@books, @people)
    @books_modified = false

    load_books_from_json
  end

  def load_books_from_json
    @books.load_books_from_json
  end

  def list_books
    @books.list_books
  end

  def list_people
    @people.list_people
  end

  def create_person
    @people.create_person
  end

  def create_student
    @people.create_student
  end

  def create_teacher
    @people.create_teacher
  end

  def create_book
    @books.create_book
    @books_modified = true # modify after creating a book
  end

  def create_rental
    @rentals.create_rental
  end

  def list_rentals
    @rentals.list_rentals
  end

  # save books in json
def save_books_to_json
  json_data = @books.books.map { |book| { title: book.title, author: book.author } }
  File.open('books.json', 'w') do |file|
    file.write(JSON.pretty_generate(json_data))
  end
end

# load books from json
def load_books_from_json
  if File.exist?('books.json')
    begin
      json_data = JSON.parse(File.read('books.json'))
      @books.books = [] # clean book list
      json_data.each do |book_data|
        book = Book.new(book_data['title'], book_data['author'])
        @books.books << book
      end
    end
  end
end
end