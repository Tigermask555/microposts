require 'test_helper'

class UsersControllerTest < ActionController::TestCase
<<<<<<< HEAD
  before_action :logged_in_user, only: [:edit, :update]
=======
>>>>>>> followings-followers

  def setup
    @user = users(:michael)
    @other_user = users(:archer)
  end

<<<<<<< HEAD
  test "should get new" do
    get :new
    assert_response :success
  end

  test "should redirect edit when not logged in" do
    get :edit, id: @user
    assert_not flash.empty?
    assert_redirected_to login_url
  end

  test "should redirect update when not logged in" do
    patch :update, id: @user, user: { name: @user.name, email: @user.email }
    assert_not flash.empty?
    assert_redirected_to login_url
  end
  
  
=======
  test "should redirect following when not logged in" do
    get :following, id: @user
    assert_redirected_to login_url
  end

  test "should redirect followers when not logged in" do
    get :followers, id: @user
    assert_redirected_to login_url
  end
>>>>>>> followings-followers
end