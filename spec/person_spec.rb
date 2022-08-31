require_relative '../person'

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
