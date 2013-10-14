require 'test_helper'

class PostTest < ActiveSupport::TestCase
  test "name uniqueness" do
    one = posts(:one)
    assert_equal one.name, "fdjgkasj", "Fixture name is wrong"
    assert one.save, "Could not save post"

    two = posts(:two)
    two.name = "fdjgkasj"
    assert !two.save, "Saved post with un-unique name"
  end

  test "no name" do
    one = posts(:one)
    one.name = ""
    assert !one.save, "Saved without name"
  end

  test "no title" do 
    one = posts(:one)
    one.title = ""
    assert !one.save, "Saved without title"
  end

  test "no author" do
    one = posts(:one)
    one.author = ""
    assert !one.save, "Saved without author"
  end

  test "no permalink" do
    one = posts(:one)
    one.permalink = ""
    assert !one.save, "Saved without permalink"
  end

  test "no article url" do
    one = posts(:one)
    one.articleUrl = ""
    assert !one.save, "Saved without article url"
  end 
end
