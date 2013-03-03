require 'test_helper'

class LinkTest < ActiveSupport::TestCase

	test "'title' is required" do
		assert_raises ActiveRecord::RecordInvalid do
			Link.create! :url => 'http://example.com'
		end
	end

	test "'url' is required" do
		assert_raises ActiveRecord::RecordInvalid do
			Link.create! :title => 'Dummy'
		end
	end

end
