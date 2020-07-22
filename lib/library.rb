require './lib/book'
class Library
  attr_reader :name, :books, :authors, :checked_out_books

  def initialize(name)
    @name = name
    @books = []
    @authors = []
    @checked_out_books = []
  end

  def add_author(author)
    @authors << author
    add_author_books(author)
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

  def checkout(book)
    if !@books.include?(book) || @checked_out_books.include?(book)
      false
    else
      book.add_to_times_checked_out
      @checked_out_books << book
      true
    end
  end

  def return(book)
    @checked_out_books.delete(book)
  end

  def most_popular_book
    checkout_times = Hash.new {|hash, key| hash[key] = []}
    @books.each do |book|
      checkout_times[book.title] << book.times_checked_out
    end
     checkout_times.invert.max[1]
  end
end
