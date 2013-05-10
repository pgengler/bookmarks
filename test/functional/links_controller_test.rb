require 'test_helper'

class LinksControllerTest < ActionController::TestCase
  test "has 'new' action" do
    get :new
    assert_response :success
  end

	test "'create' action creates new link" do
		assert_difference('Link.count') do
			post :create, link: { title: 'Dummy', url: 'http://example.com', section_id: sections(:first).id }
		end
	end

end
