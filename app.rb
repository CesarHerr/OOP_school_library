require_relative 'person_menu'
require_relative 'book_menu'
require_relative 'rentals_menu'

class App
  attr_accessor :books, :people, :rentals, :people_creator

  def initialize
    @books = BookMenu.new
    @people = People.new
    @rentals = RentalMenu.new(@books, @people)
  end

  def list_books
    @books.list_books
  end
  require_relative 'rentals_menu'
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
  end

  def create_rental
    @rentals.create_rental
  end

  def list_rentals
    @rentals.list_rentals
  end
end
