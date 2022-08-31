require_relative '../book'
require_relative '../person'
require_relative '../student'
require_relative '../teacher'
require_relative '../class_room'
require_relative '../rental'

describe Book do
  book = Book.new('Hadis', 'Bahlu')
  it `test add book` do
    expect(book.title).to include 'Hadis'
  end
  it `test title ` do
    expect(book.author).to include 'Bahlu'
  end
end

describe Person do
  person = Person.new(10, 'Bahlu', true)
  it `test person can use service` do
    expect(person.can_use_services?).to be(true)
  end

  under_age = Person.new(10, 'Bahlu', false)
  it `test person can use service` do
    expect(under_age.can_use_services?).to be_nil
  end
end

describe Student do
  student = Student.new(10, 'Bahlu', true)
  it `test student can play hocky` do
    expect(student.play_hooky).to eq '¯\(ツ)/¯'
  end
end