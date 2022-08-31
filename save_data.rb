module SaveAll
  def save_book(books)
    book_to_save = []
    books.each do |book|
      book_to_save << { 'title' => book.title, 'author' => book.author }
    end
    File.write('./books.json', JSON.generate(book_to_save))
  end

  def save_people(people)
    people_to_save = []
    people.each do |person|
      people_to_save << { 'name' => person.name,
                          'age' => person.age,
                          'id' => person.id }
    end
    File.write('./persons.json', JSON.generate(people_to_save))
  end

  def save_rentals(rentals)
    rentals_to_save = []
    rentals.each do |rental|
      rentals_to_save << { 'date' => rental.date,
                           'person_name' => rental.person.name,
                           'book_title' => rental.book.title, 'person_id' => rental.person.id }
    end
    File.write('./rentals.json', JSON.generate(rentals_to_save))
  end
end
