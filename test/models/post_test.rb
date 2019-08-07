require 'test_helper'

class PostTest < ActiveSupport::TestCase
=begin
  def setup
    @post = Post.new(title: "Example Title", content: "Hi", user_id: 1)
  end

  test "should be valid" do
    assert @post.valid?  
  end

  test "title should exists" do
    @post.title = "     "
    assert_not @post.valid?
  end

  test "content should exist" do
    @post.content = "    "
    assert_not @post.valid?
  end

  test "title should be length greater than 5 characters" do
    @post.title = "a"*4 
    assert_not @post.valid?
  end

  test "title should be length less than 50 characters" do
    @post.title = "a"*51 
    assert_not @post.valid?
  end
=end
end
