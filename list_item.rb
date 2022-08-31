require_relative 'load_data'

module ListItem
  include LoadData

  def list_books
    puts 'The Library is empty ,There is no books added yet!' if @book.length.zero?

    @book.each do |book|
      puts "#{@book.index(book)}) Title: \"#{book.title}\", Author: #{book.author}"
    end

    puts ''
    run
  end

  def list_people
    puts 'There is person in the list!' if @book.length.zero?

    @people.each do |person|
      puts "Name: #{person.name}  Age: #{person.age} ID:#{person.id} "
    end

    puts ''
    run
  end

  def list_of_rentals
    print('ID of person: ')
    id = gets.chomp.to_i
    puts('Rentals')
    puts('')

    puts 'There is no rentals' if @rentals.length.zero?

    @rentals.each do |i|
      puts "Date: #{i['date']}, Book \"#{i['book_title']}\" by #{i['person_name']}"
    end

    run
  end
end
