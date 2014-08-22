class VisitorsController < ApplicationController
	before_filter :find_model

	def new
		@owner = Owner.new
		render 'visitors/new'
	end
	

	private
	def find_model
		@model = Visitors.find(params[:id]) if params[:id]
	end
end