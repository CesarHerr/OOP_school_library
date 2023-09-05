require_relative 'book_menu'
require_relative 'person_menu'
require_relative 'rental'
require_relative 'app'

class RentalMenu
  attr_accessor :rentals

  def initialize(books, people)
    @rentals = []
    @books = books
    @people = people
  end

  def create_rental
    puts "\nCreate a rental"
    puts "\nSelect  a book from the following list by number"
    book_selected = @books.list_books[gets.chomp.to_i]
    puts "\nSelect a person from the list by bumber (not id)"
    person_selected = @people.list_people[gets.chomp.to_i]
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
