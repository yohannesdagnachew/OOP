require_relative '../teacher'

describe Teacher do
  teacher = Teacher.new('Math', 58, 'Big')
  it `test person can use service` do
    expect(teacher.can_use_services?).to be true
  end

  it `test title ` do
    expect(teacher.specialization).to include 'Math'
  end
end
