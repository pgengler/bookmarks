require 'test_helper'

class SectionsControllerTest < ActionController::TestCase
  test "has index action" do
    get :index
    assert_response :success
  end

	test "index action lists all sections" do
		get :index

		assert_select 'section', Section.count
	end
end
