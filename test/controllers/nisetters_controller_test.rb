require 'test_helper'

class NisettersControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
