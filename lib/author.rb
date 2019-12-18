class Author

  attr_reader :first_name, :last_name, :books
  def initialize(author_info)
    @first_name = author_info[:first_name]
    @last_name = author_info[:last_name]
    @books = []
  end

  def name
    @first_name + " " + @last_name
  end

  def write(title, date)
    # jane_eyre = Book.new({title, date})
    require "pry"; binding.pry
  end
end
