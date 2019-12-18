require 'minitest/pride'
require 'minitest/autorun'
require './lib/author'
require './lib/book'

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

  def test_author_book_becomes_object_and_can_call_title_off_object
    jane_eyre = @charlotte_bronte.write("Jane Eyre", "October 16, 1847")

    assert_instance_of Book, jane_eyre
    assert_equal "Jane Eyre", jane_eyre.title
  end

  def test_books_can_be_added_to_instance_variable
    jane_eyre = @charlotte_bronte.write("Jane Eyre", "October 16, 1847")
    villette = @charlotte_bronte.write("Villette", "1853")
    @charlotte_bronte.add_book(jane_eyre)
    @charlotte_bronte.add_book(villette)

    assert_equal [jane_eyre, villette], @charlotte_bronte.books
  end
end
