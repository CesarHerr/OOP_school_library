require_relative 'nameable'
require_relative 'rental'

class Person 
  attr_accessor :name, :age, :id, :rental

  def initialize(age, id = nil, name = 'Unknown', parent_permission: true)
    @id = id || Random.rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
    @rental = []
  end

  def to_hash
    {
      age: @age,
      id: @id,
      name: @name,
      parent_permission: @parent_permission
    }
  end

  def add_rental(_rental)
    Rental.new(date, book, self)
  end

  def can_use_services?
    of_age? || @parent_permission
  end

  def correct_name
    @name
  end

  private

  def of_age?
    @age >= 18
  end
end
