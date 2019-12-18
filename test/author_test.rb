require 'minitest/pride'
require 'minitest/autorun'
require './lib/author'


class AuthorTest < Minitest::Test

  def setup
    @charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
  end

  def test_author_has_a_name

  end

  def test_author_books_starts_as_empty_array
    skip
  end

end
