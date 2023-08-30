require_relative 'class_person'

class Teacher < Person
  attr_accessor :specialization

  def initialize(age, specialization, name = 'Unknow', parent_permission: true)
    super(age, name, parent_permission: parent_permission)
    @specialization = specialization
  end

  def can_use_services?
    true
  end
end
