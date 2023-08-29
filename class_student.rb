require_relative 'class_person'

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
