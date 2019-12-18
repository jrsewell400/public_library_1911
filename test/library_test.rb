require 'minitest/pride'
require 'minitest/autorun'
require './lib/library'
require './lib/author'

class AuthorTest < Minitest::Test

  def setup
    @dpl = Library.new("Denver Public Library")

    @charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
    @harper_lee = Author.new({first_name: "Harper", last_name: "Lee"})
  end

  def test_library_has_a_name
    assert_equal "Denver Public Library", @dpl.name
  end

  def test_books_and_authors_start_as_empty_array
    assert_equal [], @dpl.books
    assert_equal [], @dpl.authors
  end

  def test_authors_can_be_added
    jane_eyre = @charlotte_bronte.write("Jane Eyre", "October 16, 1847")
    professor = @charlotte_bronte.write("The Professor", "1857")
    villette = @charlotte_bronte.write("Villette", "1853")
    mockingbird = @harper_lee.write("To Kill a Mockingbird", "July 11, 1960")
    @dpl.add_author(@charlotte_bronte)
    @dpl.add_author(@harper_lee)

    assert_equal [@charlotte_bronte, @harper_lee], @dpl.authors
  end
end

# pry(main)> dpl.authors
# => [#<Author:0x00007fbeea2d78b8...>, #<Author:0x00007fbeea112730...>]
#
# pry(main)> dpl.books
# => [#<Book:0x00007fbeeb3beca8...>, #<Book:0x00007fbeea8efd90...>, #<Book:0x00007fbeea24fbe8...>, #<Book:0x00007fbeeb1089f0...>]
#
# pry(main)> dpl.publication_time_frame_for(charlotte_bronte)
# #=> {:start=>"1847", :end=>"1857"}
#
# pry(main)> dpl.publication_time_frame_for(harper_lee)
# #=> {:start=>"1960", :end=>"1960"}
