class Person
  attr_reader :id
  attr_accessor :name, :age

  def initialize(age, name: 'Unknown', parent_permission: true)
    @id = Random.rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  def can_use_services?
    of_age? || @parent_permission
  end

  private

  def of_age?
    @age >= 18
  end
end

class Student < Person
  attr_accessor :classroom

  def initialize(age, name:, parent_permission:, classroom:)
    super(age, name: name, parent_permission: parent_permission)
    @classroom = classroom
  end

  def play_hooky
    '¯(ツ)/¯'
  end
end

class Teacher < Person
  attr_accessor :specialization

  def initialize(age, name:, parent_permission:, specialization:)
    super(age, name: name, parent_permission: parent_permission)
    @specialization = specialization
  end

  def can_use_services?
    true
  end
end

p persona1 = Person.new(39, name: 'Cesar', parent_permission: false)
p persona1.can_use_services?
p student1 = Student.new(8, name: 'Antony', parent_permission: false, classroom: '4C')
p student1.play_hooky
p teacher1 = Teacher.new(28, name: 'Jim', parent_permission: false, specialization: 'Backend')
p teacher1.can_use_services?
