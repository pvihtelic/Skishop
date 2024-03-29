class SkisController < ApplicationController

	def new
		@ski = Ski.new
	end

	def create
		@ski = Ski.new
		@ski.url = params[:ski][:url]
		@ski.title = params[:ski][:title]
		@ski.price = params[:ski][:price]
		@ski.link = params[:ski][:link]
		@ski.skitype = params[:ski][:skitype]
		@ski.brand = params[:ski][:brand]
		@ski.name = params[:ski][:name]
		@ski.gender = params[:ski][:gender]
		@ski.description = params[:ski][:description]
		@ski.stores = params[:ski][:stores]
		@ski.size = params[:ski][:size]
		@ski.details = params[:ski][:details]
		@ski.reviews = params[:ski][:reviews]
		if @ski.save
			redirect_to skis_url
		else
			flash[:notice] = "You forgot something"
			render 'new'
		end	
	end

	def index
		@skis = Ski.all
	end

	def show
		@ski = Ski.find_by_id(params["id"])
	end

	def destroy
		p = Ski.find_by_id(params["id"])
		p.destroy
		redirect_to skis_url
	end

	def edit
		@ski = Ski.find_by_id(params["id"])
	end

	def update
		@ski = Ski.find_by_id(params[:id])
		@ski.url = params[:ski][:url]
		@ski.title = params[:ski][:title]
		@ski.price = params[:ski][:price]
		@ski.link = params[:ski][:link]
		@ski.skitype = params[:ski][:skitype]
		@ski.brand = params[:ski][:brand]
		@ski.name = params[:ski][:name]
		@ski.gender = params[:ski][:gender]
		@ski.description = params[:ski][:description]
		@ski.stores = params[:ski][:stores]
		@ski.size = params[:ski][:size]
		@ski.details = params[:ski][:details]
		@ski.reviews = params[:ski][:reviews]
		if @ski.save
			redirect_to ski_url(@ski.id)
		else
			render 'edit'
		end
	end
end