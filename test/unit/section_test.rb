require 'test_helper'

class SectionTest < ActiveSupport::TestCase

	test "'name' is required" do
		assert_raises ActiveRecord::RecordInvalid do
			Section.create! :position => 1
		end
	end

end
