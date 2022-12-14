require_relative 'save_data'

module CreateItems
  include SaveAll

  #   Create person
  def create_people
    puts 'Do you want to create a student (1) or a teacher (2) ? [Input the number]:'
    input = gets.chomp.to_i
    case input
    when 1
      create_student
    when 2
      create_teacher
    else
      puts 'Please Enter 1/2 please'
      create_people
    end
  end

  # create student
  def create_student
    print 'Age: '
    age = gets.chomp.to_i

    print 'Name: '
    name = gets.chomp

    print 'Has parent permission? [Y/N]: '

    parent_permission = ''

    case gets.chomp.downcase
    when 'y'
      parent_permission = true

    when 'n'
      parent_permission = false
    else
      puts('please enter [Y/N]: ')
    end

    new_student(age, name, parent_permission)

    puts('Student person created successfully!')
  end

  def new_student(age, name, parent_permission)
    new_student = Student.new(age, name, parent_permission)
    @people << new_student

    save_people(@people)
    run
  end

  # create teacher
  def create_teacher
    print 'Age: '
    age = gets.chomp

    print 'Name: '
    name = gets.chomp

    print 'Specialization: '
    specialization = gets.chomp

    new_teacher(specialization, age, name)

    puts('Teacher person created successfully!')
    run
  end

  def new_teacher(specialization, age, name)
    new_teacher = Teacher.new(specialization, age, name)
    @people << new_teacher
  end

  # create book
  def create_book
    puts 'Title:'
    title = gets.chomp

    puts 'Author:'
    author = gets.chomp

    new_book(title, author)
    puts('Book created successfully')
    run
  end

  def new_book(title, author)
    new_book = Book.new(title, author)
    @book << new_book
  end

  # create rental
  def create_rental
    puts('Select a book from the following list by number')
    @book.each do |book|
      puts("#{@book.index(book)} Title: \"#{book.title}\", Age: #{book.author}")
    end

    book_id = gets.chomp.to_i
    selected_book = @book[book_id]

    puts('Select a person from the following list by number')
    @people.each do |person|
      puts("#{@people.index(person)}) Name: \"#{person.name}\", Age: #{person.age}")
    end

    person_id = gets.chomp.to_i
    selected_person = @people[person_id]

    print('Date: ')
    rental_date = gets.chomp

    new_rental(rental_date, selected_book, selected_person)
  end

  def new_rental(rental_date, selected_book, selected_person)
    new_rental = Rental.new(rental_date, selected_book, selected_person)
    @rentals << { 'date' => new_rental.date,
                  'person_name' => new_rental.person.name,
                  'book_title' => new_rental.book.title, 'person_id' => new_rental.person.id }
    save_rentals(@rentals)
    run
  end
end
