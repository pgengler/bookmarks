class LinksController < ApplicationController
	def new
		@link = Link.new
	end

	def create
		@section = Section.find(params[:link][:section_id])
		@section.links.create title: params[:link][:title], url: params[:link][:url]

		redirect_to root_path
	end
end
