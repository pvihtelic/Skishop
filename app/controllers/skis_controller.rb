class SkisController < ApplicationController

	def index
		@skis = Ski.all
	end

	def new
	end

	def create
		p = Ski.new
		p.url = params[:url]
		p.title = params[:title]
		p.price = params[:price]
		p.link = params[:link]
		p.save
		redirect_to "/skis"
	end

	def show
		@ski = Ski.find_by_id(params["id"])
	end

	def destroy
		p = Ski.find_by_id(params["id"])
		p.destroy
		redirect_to "/skis"
	end

	def edit
		@ski = Ski.find_by_id(params["id"])
	end

	def update
		ski = Ski.find_by_id(params[:id])
		ski.url = params[:url]
		ski.title = params[:title]
		ski.price = params[:price]
		ski.link = params[:link]
		ski.save
		redirect_to "/skis"
	end
end
