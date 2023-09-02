require_relative 'class_person'
require_relative 'classroom'

class Student < Person
  attr_accessor :classroom

  def initialize(age, classroom, name = 'Unknown', parent_permission: true)
    super(age, name, parent_permission: parent_permission)
    @classroom = classroom
  end

  def add_classroom(classroom)
    @classroom = classroom
    classroom.add_student.push(self) unless classroom.add_student.include?(self)
  end

  def play_hooky
    '¯(ツ)/¯'
  end
end
