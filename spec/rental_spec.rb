require_relative '../rental'
require_relative '../student'
require_relative '../book'

describe Rental do
  person = Student.new 10, 'Bahlu', true
  book = Book.new 'Hello', 'World'
  rental = Rental.new('22', book, person)

  it `test label` do
    expect(rental.date).to include '22'
  end
end
