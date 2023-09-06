#!/usr/bin/env ruby
require_relative 'menu'

def main
  app = App.new

  menu = Menu.new(app)
  menu.run

  app.save_books_to_json # save data to json files on program exit
end

main
