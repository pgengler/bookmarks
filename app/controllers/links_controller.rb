class LinksController < ApplicationController
	before_filter :lookup_section

	def new
		@link = @section.links.build
	end

	def create
		@section.links.create title: params[:link][:title], url: params[:link][:url]
		redirect_to root_path
	end

	def edit
		@link = @section.links.find(params[:id])
	end

	def update
		@link = @section.links.find(params[:id])
		@link.update_attributes params[:link]
		redirect_to root_path
	end

	def destroy
		@link = @section.links.find(params[:id])
		@link.destroy
		redirect_to root_path
	end

	private

	def lookup_section
		@section = Section.find(params[:section_id])
	end
end
