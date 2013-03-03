class Link < ActiveRecord::Base
  attr_accessible :title, :url

	validates :title, :presence => true
end
