require_relative 'class_student'
require_relative 'class_teacher'
require_relative 'class_person'
require_relative 'classroom'


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
