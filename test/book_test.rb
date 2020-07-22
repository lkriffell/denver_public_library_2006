require './lib/book'
require "minitest/autorun"
require "minitest/pride"

class Bookest < Minitest::Test

  def test_it_exists
    book = Book.new({author_first_name: "Harper",
                    author_last_name: "Lee",
                    title: "To Kill a Mockingbird",
                    publication_date: "July 11, 1960"})

    assert_instance_of Book, book
  end

  #def test_it_has_attributes
  #end

end
