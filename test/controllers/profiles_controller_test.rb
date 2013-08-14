require 'test_helper'

class ProfilesControllerTest < ActionController::TestCase
  test "should get show" do
    get :show,id: users(:chris).name
    assert_response :success
    assert_template 'profiles/show'
  end

  test "should render a 404 on profile not found" do
  	get :show, id: "doesn't exsist"
  	assert_response :not_found
  end

  test "that variable are assigned" do
  	 get :show,id: users(:chris).name
  	 assert assigns(:user)
  	 #assert_not_empty assigns(:statuses)
  	end

end
