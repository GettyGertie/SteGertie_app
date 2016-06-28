require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  test "should get new" do
    get :new
    assert_response :success
  end

 test "redirect to root url" do
    post :create, params: {
      user:{ 
        username: "SteGa",
        email: "stegal@gmail.com",
        password: "foobar",
        password_confirmation: "foobar" 
      }

    }
    assert_redirected_to root_url
  end
  test "should render flash for successful signup" do
    post :create, params: {
      user:{ 
        username: "SteGa",
        email: "stegal@gmail.com",
        password: "foobar",
        password_confirmation: "foobar" 
      }
    }
    assert_match "Yaay! you're in!", flash[:success]
  end

 
  test "unsuccessful signup" do
    post :create, params: {
      user:{ 
        username: "",
        email: "stegal@gmail.com",
        password: "foobar",
        password_confirmation: "foobar" 
      }
    }
    assert_template 'new'
end
end
