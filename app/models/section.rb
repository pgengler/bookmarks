class Section < ActiveRecord::Base
  attr_accessible :position, :name

	validates :name, :presence => true, :uniqueness => true
	validates :position, :presence => true, :uniqueness => true

	has_many :links
end
