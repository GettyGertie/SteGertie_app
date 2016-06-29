require 'test_helper'

class UsersSignupTest < ActionDispatch::IntegrationTest

  test "invalid signup information" do
    get signup_url
    assert_no_difference 'User.count' do
      post users_url, user: {username: "", email: "getty@gmail.com", password: "foobar", pasword_confirmation: "bar"}
    end
    assert_template 'users/new'
  end
  test "valid signup information" do
    get signup_url
    assert_difference 'User.count', 1 do
      post_via_redirect users_url, user: {username: "Denno", email: "getty@gmail.com",
                                          password: "foobar", pasword_confirmation: "foobar"}

    end
       assert_template 'users/show'
    assert_match "Yaay! you're in!", flash[:success]
    assert_select "p", User.last.email
  end

end
