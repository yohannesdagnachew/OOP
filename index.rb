require_relative 'nameable'
require_relative 'decorator'
require_relative 'capitalize'
require_relative 'trim'
require_relative 'person'

person = Person.new(22, 'maximilianus', false)
puts person.correct_name
capitalized_person = CapitalizeDecorator.new(person)
puts capitalized_person.correct_name
capitalized_trimmed_person = TrimmerDecorator.new(capitalized_person)
puts capitalized_trimmed_person.correct_name
