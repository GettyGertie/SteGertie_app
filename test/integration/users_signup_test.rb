require 'test_helper'

class UsersSignupTest < ActionDispatch::IntegrationTest

  test "unsuccesful signup" do
    get signup_url
  assert_no_difference 'User.count' do
post users_url, user: {username: "", email: "getty@gmail.com", password: "foobar", pasword_confirmation: "bar"}
  end
  assert_template 'users/new'


  end
end
