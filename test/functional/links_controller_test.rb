require 'test_helper'

class LinksControllerTest < ActionController::TestCase
  test "has 'new' action" do
    get :new, section_id: sections(:first)
    assert_response :success
  end

	test "'create' action creates new link" do
		assert_difference('Link.count') do
			post :create, section_id: sections(:first).id, link: { title: 'Dummy', url: 'http://example.com' }
		end
	end

end
