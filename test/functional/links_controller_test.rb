require 'test_helper'

class LinksControllerTest < ActionController::TestCase
  test "has 'new' action" do
    get :new
    assert_response :success
  end

end
