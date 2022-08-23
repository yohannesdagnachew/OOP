require_relative 'nameable'

class Person < Nameable
  attr_reader :id
  attr_accessor :age, :name

  def initialize(age, name = 'Unknown', parent_permission: true)
    super()
    @id = Random.rand(1..1000)
    @age = age
    @name = name
    @parent_permission = parent_permission
  end

  def correct_name
    @name
  end

  def can_use_services?
    true if age? or @parent_permission
  end

  def age?
    @age > 18
  end

  private :age?
end
