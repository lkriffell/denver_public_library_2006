class Author

  attr_reader :first_name, :last_name, :name, :books

  def initialize(author)
    @first_name = author[:first_name]
    @last_name = author[:last_name]
    @name = "#{@first_name} #{@last_name}"
    @books = []
  end

  def write(title, date)
    book = Book.new({title: title, publication_date: date})
    add_book(book)
    book
  end

  def add_book(book)
    @books << book
  end
end
