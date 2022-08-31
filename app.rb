require_relative 'book'
require_relative 'student'
require_relative 'teacher'
require_relative 'person'
require_relative 'rental'
require_relative 'list_item'
require_relative 'create_item'
require 'json'

class App
  include CreateItems
  include ListItem

  def initialize
    @book = load_book
    @rentals = load_rentals
    @people = load_person
  end

  def options
    puts('Welcome to school library App!')
    puts('Please choose an option by entering a a number:')
    puts('1 - List all books')
    puts('2 - List all people')
    puts('3 - Create a person')
    puts('4 - Create a book')
    puts('5 - Create a rental')
    puts('6 - List all rentals for a given person id')
    puts('7 - Exit')
    puts('')
  end

  def display
    options
  end

  def run_choise(input)
    case input
    when '1'
      list_books
    when '2'
      list_people
    when '3'
      create_people
    when '4'
      create_book
    when '5'
      create_rental
    when '6'
      list_of_rentals
    else
      exit
    end
  end

  def run
    options
    puts 'Enter number'
    input = gets.chomp
    run_choise(input)
  end
end

one = App.new
one.run
