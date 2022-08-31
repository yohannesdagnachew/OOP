module LoadData
  def load_book
    if File.exist?('./books.json')
      saved_books = JSON.parse(File.read('./books.json'))
      books = []
      saved_books.each do |book|
        books << Book.new(book['title'], book['author'])
      end
      books
    else
      File.write('./books.json', '[]')
    end
  end

  def load_person
    saved_person = JSON.parse(File.read('./persons.json'))
    people = []
    saved_person.each do |person|
      people << Person.new(person['id'], person['name'], person['age'])
    end
    people
  end

  def load_rentals
    saved_rentals = open('./rentals.json')
    save = saved_rentals.read
    rent = JSON.parse(save)
  end
end
