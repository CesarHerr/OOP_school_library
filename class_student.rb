require_relative 'class_person'
require_relative 'classroom'

class Student < Person
  attr_accessor :classroom

  def initialize(age, classroom, name = 'Unknown', id = nil, parent_permission: true)
    super(age, id, name, parent_permission: parent_permission)
    @classroom = classroom
  end

  def to_hash
    {
      class: 'Student',
      age: @age,
      name: @name,
      id: @id,
      classroom: @classroom,
      parent_permission: @parent_permission
    }
  end

  def add_classroom(classroom)
    @classroom = classroom
    classroom.add_student.push(self) unless classroom.add_student.include?(self)
  end

  def play_hooky
    '¯(ツ)/¯'
  end
end
