require 'test_helper'

class SectionTest < ActiveSupport::TestCase

	test "'name' is required" do
		assert_raises ActiveRecord::RecordInvalid do
			Section.create! position: 1
		end
	end

	test "'name' is unique" do
		name = 'Dummy'

		Section.create! name: name, position: next_position
		assert_raises ActiveRecord::RecordInvalid do
			Section.create! name: name, position: next_position
		end
	end

	test "'position' is required" do
		assert_raises ActiveRecord::RecordInvalid do
			Section.create! name: 'Test'
		end
	end

	test "'position' is unique" do
		position = next_position
		Section.create! name: 'Section1', position: position
		assert_raises ActiveRecord::RecordInvalid do
			Section.create! name: 'Section2', position: position
		end
	end

	def next_position
		Section.all.map(&:position).max + 1
	end
end
