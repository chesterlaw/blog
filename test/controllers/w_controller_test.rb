require 'test_helper'

class WControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get twitter" do
    get :twitter
    assert_response :success
  end

end
