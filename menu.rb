class Menu
    def initialize
      @book_menu = BookMenu.new
      @people_menu = PeopleMenu.new
      @rental_menu = RentalMenu.new
    end
  
    def run
      loop do
        display_menu
        choice = gets.chomp.to_i
  
        case choice
        when 1
          @book_menu.list_books
        when 2
          @people_menu.list_people
        when 3
          @people_menu.create_person
        when 4
          @book_menu.create_book
        when 5
          @rental_menu.create_rental
        when 6
          @rental_menu.list_rentals_by_person
        when 7
          puts "\nThanks for using this app! :)"
          break
        else
          puts "\nWrong number, try again"
        end
      end
    end
  
    def display_menu
      puts "\nPlease choose an option by entering a number"
      puts "\n1 - List all books"
      puts '2 - List all people'
      puts '3 - Create a people'
      puts '4 - Create a book'
      puts '5 - Create a rental'
      puts '6 - List all rentals for a given person id'
      puts '7 - Exit'
    end
  end
  