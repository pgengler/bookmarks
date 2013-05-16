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

	test "has 'edit' action" do
		link = links(:one)
		get :edit, section_id: link.section, id: link
		assert_response :success
	end

	test "'update' action changes a link's title and URL" do
		link = links(:one)
		put :update, section_id: link.section.id, id: link.id, link: { title: 'UpdateActionTestTitle', url: 'http://example.com/?UpdateActionTestURL' }
		assert_redirected_to root_path
	end

	test "'destroy' action removes link" do
		link = links(:one)
		assert_difference('Link.count', -1) do
			delete :destroy, section_id: link.section.id, id: link.id
		end
	end

end
