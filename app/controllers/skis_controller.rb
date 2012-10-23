class SkisController < ApplicationController

	def index
		@skis = Skis.all
	end

	def new
	end

	def create
		p = Skis.new
		p.url = params[:url]
		p.title = params[:title]
		p.price = params[:price]
		p.link = params[:link]
		p.save
		redirect_to "/skis"
	end

	def show
		@ski = Skis.find_by_id(params["id"])
	end


end
