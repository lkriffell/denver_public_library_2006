class Author

  attr_reader :first_name, :last_name

  def initialize(author)
    @first_name = author[:first_name]
    @last_name = author[:last_name]
  end
end
