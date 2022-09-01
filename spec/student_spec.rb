require_relative '../student'

describe Student do
  student = Student.new(10, 'Bahlu', true)
  it `test student can play hocky` do
    expect(student.play_hooky).to eq '¯\(ツ)/¯'
  end
end
