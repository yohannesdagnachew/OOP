require_relative '../class_room'

describe Classroom do
  classroom = Classroom.new('Math')
  it `test label` do
    expect(classroom.label).to include 'Math'
  end
end
