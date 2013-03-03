class Section < ActiveRecord::Base
  attr_accessible :position, :name

	validates :name, :presence => true
end
