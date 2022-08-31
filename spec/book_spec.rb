require_relative '../book'
describe Book do
  book = Book.new('Hadis', 'Bahlu')
  it `test add book` do
    expect(book.title).to include 'Hadis'
  end
  it `test title ` do
    expect(book.author).to include 'Bahlu'
  end
end
