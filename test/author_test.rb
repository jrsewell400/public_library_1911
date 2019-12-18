require 'minitest/pride'
require 'minitest/autorun'
require './lib/author'


class AuthorTest < Minitest::Test

  def setup
    @charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})

  end

  def test_author_has_a_name
    assert_equal "Charlotte Bronte", @charlotte_bronte.name
  end

  def test_author_books_starts_as_empty_array
    assert_equal [], @charlotte_bronte.books
  end

  def test_author_can_write_book
    @charlotte_bronte.write("Jane Eyre", "October 16, 1847")
    # jane_eyre = charlotte_bronte.write("Jane Eyre", "October 16, 1847")
    #=> #<Book:0x00007fb896e22538...>
    assert_equal jane_eyre, @charlotte_bronte.write("Jane Eyre", "October 16, 1847")


  end


end
