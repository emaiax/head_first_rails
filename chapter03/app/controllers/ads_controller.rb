class AdsController < ApplicationController
	def show
		@ad = Ad.find(params[:id])
	end

	def index
		@ads = Ad.all
	end

	def new
		@ad = Ad.new
	end
	
	def create
		@ad = Ad.new(params[:ad])
		
		respond_to do |format|
			if @ad.save
				format.html { redirect_to @ad, notice: 'Ad was succesfully created!' }
			else
				format.html { render action: 'new' }
			end
		end		
	end
	
	def edit
		@ad = Ad.find(params[:id])
	end
	
	def update
		@ad = Ad.find(params[:id])
		
		respond_to do |format|
			if @ad.update_attributes(params[:ad])
				format.html { redirect_to @ad, notice: 'Ad was succesfully updated!' }
			else
				format.html { render action: 'edit' }
			end
		end		
	end
	
	def destroy
		@ad = Ad.find(params[:id])
		@ad.destroy
		
		respond_to do |format|
			format.html { redirect_to ads_url }		
		end
	end
end
