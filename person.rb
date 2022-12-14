require_relative 'nameable'
require_relative 'rental'

class Person < Nameable
  attr_reader :id, :rentals
  attr_accessor :age, :name

  def initialize(age, name, parent_permission)
    super()
    @id = Random.rand(1..1000)
    @age = age
    @name = name
    @parent_permission = parent_permission
    @rentals = []
  end

  def correct_name
    @name
  end

  def can_use_services?
    true if age? or @parent_permission
  end

  def add_rental(rental)
    @rentals << rental
  end

  def age?
    @age > 18
  end

  private :age?
end
