require 'test_helper'

class SectionControllerTest < ActionController::TestCase
  test "has index action" do
    get :index
    assert_response :success
  end
end
