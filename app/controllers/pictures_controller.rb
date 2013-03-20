class PicturesController < ApplicationController		# NOT:ActionController::Base
	# before_filter :load_pictures

	def index
		@pictures = Picture.all
	end

	def show
		@picture = Picture.find params[:id]
	end

	def new
	end

	def create
		@picture = Picture.new
		@picture.url = params[:url]
		@picture.title = params[:title]
		@picture.artist = params[:artist]
		@picture.save
		success = @picture.save
			if success
				redirect_to '/pictures'
			end		
		# render :text => "Saving a picture. Url: #{params[:url]}, Title: #{params[:title]}, Artist: #{params[:artist]}"
	end

	def edit
		@picture = Picture.find params[:id]
	end

	def update
		# Get the picture I want to update
		@picture = Picture.find params[:id]
		# Get the new data for the picture
		success = @picture.update_attributes(:title => params[:title], :url => params[:url], :artist => params[:artist])
		# Old, working way
		# @picture.url = params[:url]
		# @picture.title = params[:title]
		# @picture.artist = params[:artist]
		# @picture.save
		# Redirect to the picture after posting changes
		if success
			redirect_to '/pictures/show'
		else
			redirect_to '/pictures'
		end	
	end


end