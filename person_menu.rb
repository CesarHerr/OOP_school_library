require_relative 'class_student'
require_relative 'class_teacher'
require_relative 'class_person'
require_relative 'classroom'
require 'json'

class People
  attr_accessor :people

  def initialize
    @people = []
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

  def loading_people
    return unless File.exist?('people.json')

    people_data = JSON.parse(File.read('people.json'))
    people_data.each do |data|
      if data['class'] == 'Student'
        create_student_saved(data)

      elsif data['class'] == 'Teacher'
        create_teacher_saved(data)
      end
    end
  end

  def create_student_saved(data)
    person = Student.new(
      data['age'],
      data['classroom'],
      data['name'],
      data['id'],
      parent_permission: data['parent_permission']
    )
    @people << person
  end

  def create_teacher_saved(data)
    person = Teacher.new(data['age'], data['specialization'], data['name'], data['id'])
    @people << person
  end

  def save_people
    people_data = @people.map(&:to_hash)

    File.write('people.json', JSON.pretty_generate(people_data))
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

  def create_student
    puts 'create student'
    print 'Age:'
    age = gets.chomp

    print 'Name:'
    name = gets.chomp

    print 'Classroom:'
    classroom = gets.chomp
    Classroom.new(classroom)

    print 'Has parent permission? [y/n]:'
    permission = gets.chomp.upcase == 'Y'
    student = Student.new(age, classroom, name, parent_permission: permission)
    @people.push(student)
    puts "\nThe student was Created successfully"
  end

  def create_teacher
    puts 'create teacher'
    print 'Age:'
    age = gets.chomp

    print 'Name:'
    name = gets.chomp
    print 'Specialization:'

    specialization = gets.chomp
    teacher = Teacher.new(age, specialization, name)
    @people.push(teacher)
    puts "\nThe teacher was Created successfully"
  end
end
