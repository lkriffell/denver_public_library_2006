class Book
  attr_reader :author_first_name,
              :author_last_name,
              :title,
              :publication_date,
              :author,
              :publication_year,
              :times_checked_out

  def initialize(book)
    @author_first_name = book[:author_first_name]
    @author_last_name = book[:author_last_name]
    @author = "#{@author_first_name} #{@author_last_name}"
    @title = book[:title]
    @publication_date = book[:publication_date]
    @publication_year = @publication_date.split(" ").last
    @times_checked_out = 0
  end

  def add_to_times_checked_out
    @times_checked_out += 1
  end
end
