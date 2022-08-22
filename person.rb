class Person
  def initialize(age, name = 'Unknown', parent_permission: true)
    @id = id
    @age = age
    @name = name
    @parent_permission = parent_permission
  end

  attr_reader :id

  attr_accessor :age, :name

  def can_use_services?
    true if age? or @parent_permission
  end

  private

  def age?
    @age > 18
  end
end

p1 = Person.new(30, 'John')
puts p1.can_use_services?
