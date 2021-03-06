require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user = User.new(username: "Denno", email: "getty@gmail.com
                     ")
  end
  test "user should be valid" do
    assert  @user.valid?
  end
  test "name should be present" do
    @user.username = "  "
    assert_not @user.valid?
  end
  test "name length should be valid" do
    @user.username = "a" * 51
    assert_not @user.valid?
  end
  test "email should be present" do
    @user.email = ""
    assert_not @user.valid?
  end
  test "email length should be valid" do
    @user.email = "a" * 241 + "@gmail.com"
    assert_not @user.valid?
  end
end
