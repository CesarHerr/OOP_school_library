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

  def list_people
    if @people.empty?
      puts "\nThis is empty!! :("
    else
      puts "\nList all people"
      @people.each_with_index do |element, index|
        puts "#{index}) [#{element.class}] Name:#{element.name}, Age:#{element.age}, ID:#{element.id}"
      end
    end
  end

  def create_person
    print "\nDo you want to create a student (1) or a teachet (2)? [Input the number]:"
    people = gets.chomp

    case people
    when '1'
      create_student
    when '2'
      create_teacher
    else
      puts 'Wrong number!'
    end
  end
