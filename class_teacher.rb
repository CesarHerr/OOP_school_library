require_relative 'class_person'

class Teacher < Person
  attr_accessor :specialization

  def initialize(age, specialization, name = 'Unknow', parent_permission: true)
    super(age, name, parent_permission: parent_permission)
    @specialization = specialization
  end

  def to_hash
    {
      class: 'Teacher',
      age: @age,
      name: @name,
      specialization: @specialization,
      parent_permission: @parent_permission,
      id: @id,
      rentals: @rental
    }
  end

  def can_use_services?
    true
  end
end
