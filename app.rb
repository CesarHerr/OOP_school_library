require_relative 'class_student'
require_relative 'class_teacher'
require_relative 'book'
require_relative 'class_person'
require_relative 'rental'
require_relative 'classroom'

class App
  attr_accessor :books, :people, :rentals

  def initialize
    @books = []
    @people = []
    @rentals = []
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
