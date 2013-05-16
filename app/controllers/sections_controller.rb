class SectionsController < ApplicationController

	def index
		@sections = Section.all
	end

	def edit
		@section = Section.find(params[:id])
	end

	def new
		@section = Section.new
	end

end
