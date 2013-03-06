class Link < ActiveRecord::Base
  attr_accessible :title, :url

	validates :title, :presence => true
	validates :url, :presence => true

	belongs_to :section
end
