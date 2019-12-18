class Author

  attr_reader :first_name, :last_name, :books, :book_info

  def initialize(author_info)
    @first_name = author_info[:first_name]
    @last_name = author_info[:last_name]
    @books = []
  end

  def name
    @first_name + " " + @last_name
  end

  def write(title, date)
    book_info = {}
    book_info[:author_first_name] = @first_name
    book_info[:author_last_name] = @last_name
    book_info[:title] = title
    book_info[:publication_date] = date
    Book.new(book_info)
  end

  def add_book(book)
    @books << book
  end
end
