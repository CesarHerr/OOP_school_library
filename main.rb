#!/usr/bin/env ruby
require_relative 'app'

class Main
  def initialize
    @menu_app = App.new
    @selected = nil
  end

  def options
    puts "\nPlease choose an option by enterin a number "
    puts "\n1 - List all books"
    puts '2 - List all people'
    puts '3 - Create a people'
    puts '4 - Create a book'
    puts '5 - Create a rental'
    puts '6 - List all rental for a given person id'
    puts '7 - Exit'
    @selected = gets.chomp
    puts "\nYou select option #{@selected}"
    selection
  end

  def selection
    actions = {
      '1' => -> { @menu_app.list_books },
      '2' => -> { @menu_app.list_people },
      '3' => -> { @menu_app.create_person },
      '4' => -> { @menu_app.create_book },
      '5' => -> { @menu_app.create_rental },
      '6' => -> { @menu_app.list_rentals },
      '7' => -> { puts "\nThanks for using this app! :)" },
      'default' => -> { puts "\nWrong number, try again" }
    }

    action = actions[@selected] || actions['default']
    action.call

    options unless @selected == '7'
  end
end

def main
  app = Main.new
  app.options
end

main
