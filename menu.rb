require_relative 'app'

class Menu
  def initialize
    @menu = App.new

    @options = {
      1 => { label: 'List all books', action: -> { @menu.list_books } },
      2 => { label: 'List all people', action: -> { @menu.list_people } },
      3 => { label: 'Create a people', action: -> { @menu.create_person } },
      4 => { label: 'Create a book', action: -> { @menu.create_book } },
      5 => { label: 'Create a rental', action: -> { @menu.create_rental } },
      6 => { label: 'List all rentals for a given person id', action: -> { @menu.list_rentals} },
      7 => { label: 'Exit', action: -> { exit_application } }
    }.freeze
  end

  def run
    loop do
      display_menu
      choice = gets.chomp.to_i

      if @options.key?(choice)
        @options[choice][:action].call
      else
        puts "\nWrong number, try again"
      end

      break if choice == 7
    end
  end

  private

  def display_menu
    puts "\nPlease choose an option by entering a number"
    @options.each { |key, value| puts "#{key} - #{value[:label]}" }
  end

  def exit_application
    puts "\nThanks for using this app! :)"
  end
end