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

describe Teacher do
  teacher = Teacher.new('Math', 58, 'Big')
  it `test person can use service` do
    expect(teacher.can_use_services?).to be true
  end

  it `test title ` do
    expect(teacher.specialization).to include 'Math'
  end
end

describe Classroom do
  classroom = Classroom.new('Math')
  it `test label` do
    expect(classroom.label).to include 'Math'
  end
end

describe Rental do
  person = Student.new 10, 'Bahlu', true
  book = Book.new 'Hello', 'World'
  rental = Rental.new('22', book, person)

  it `test label` do
    expect(rental.date).to include '22'
  end
end
