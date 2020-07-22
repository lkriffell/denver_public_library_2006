class Library
  attr_reader :name, :books, :authors

  def initialize(name)
    @name = name
    @books = []
    @authors = []
  end

  def add_author(author)
    @authors << author
  end

  def add_author_books(author)
    @books << author.books
    @books = @books.flatten
  end

  def publication_time_frame_for(author)
    book_years = author.books.map do |book|
      book.publication_year
    end
    create_time_frame(book_years)
  end

  def create_time_frame(book_years)
    time_frame = {}
    time_frame[:start] = book_years.min
    time_frame[:end] = book_years.max
    time_frame
  end
end
