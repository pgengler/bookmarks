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

	test "a section's links are included in the page" do
		get :index

		section = sections(:first)
		assert_select "section[data-id=#{section.id}]" do
			assert_select 'a', section.links.count
		end
	end
end
