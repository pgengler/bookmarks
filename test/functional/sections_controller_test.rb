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
		assert_select "section[data-id=#{section.id}] ul" do
			assert_select 'a[rel=external]', section.links.count
		end
	end

	test "has edit action" do
		get :edit, id: sections(:first).id
		assert_response :success
	end

	test "a section's header has a link to its 'edit section' page" do
		get :index

		section = sections(:first)
		assert_select "section[data-id=#{section.id}] header" do
			assert_select "a[href=#{edit_section_path(section)}]"
		end
	end

	test "has 'new' action" do
		get :new
		assert_response :success
	end
end
