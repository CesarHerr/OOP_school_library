require_relative 'class_person'

class Teacher < Person
  attr_accessor :specialization

  def initialize(age, specialization, name = 'Unknow', id = nil, parent_permission: true)
    super(age, id, name, parent_permission: parent_permission)
    @specialization = specialization
  end

  def to_hash
    {
      class: 'Teacher',
      age: @age,
      name: @name,
      id: @id,
      specialization: @specialization,
      parent_permission: @parent_permission
    }
  end

  def can_use_services?
    true
  end
end
