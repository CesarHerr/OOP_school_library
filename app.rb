require_relative 'rental'
require_relative 'person_menu'
require_relative 'book_menu'

class App
  attr_accessor :books, :people, :rentals, :people_creator

  def initialize
    @books = BookMenu.new
    @people = People.new
    @rentals = []
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
  end

  def create_rental
    puts "\nCreate a rental"
    puts "\nSelect  a book from the following list by number"
    list_books
    book_selected = @books[gets.chomp.to_i]
    puts "\nSelect a person from the list by bumber (not id)"
    list_people
    person_selected = @people[gets.chomp.to_i]
    print 'Date:'
    date = gets.chomp.to_s
    rental = Rental.new(date, book_selected, person_selected)
    @rentals.push(rental)
    puts 'Rental created successfully'
  end

  def list_rentals
    if @rentals.empty?
      puts "\nThis is empty!! :("
    else
      puts "\nList all rentals for a given person id."
      print "\nID of person:"
      person_id = gets.chomp.to_i
      rental_by_id = @rentals.select { |element| element.person.id == person_id }
      rental_by_id.each_with_index do |element, index|
        puts "#{index}) Date:#{element.date}, Book:#{element.book.title} by #{element.book.author}"
      end
    end
  end
end
