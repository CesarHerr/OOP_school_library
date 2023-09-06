#!/usr/bin/env ruby
require_relative 'menu'

def main
  menu = Menu.new
  menu.run
end

app = App.new
app.load_books_from_json # load books data from json files

main
app.save_data_to_json # save data to json files on program exit
