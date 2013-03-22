class PicturesController < ApplicationController		# NOT:ActionController::Base
	# before_filter :load_pictures

	def index
		if params[:free] == "yes"
			@pictures = Picture.free.alphabetical.all
		else
			@pictures = Picture.alphabetical.all
		end
	end

	def show
		@picture = Picture.find params[:id]
	end

	def new
		@picture = Picture.new
	end

	def create
		# Old way of doing this:
		# @picture = Picture.new
		# @picture.url = params[:url]
		# @picture.title = params[:title]
		# @picture.artist = params[:artist]
		# @picture.save
		# success = @picture.save

		# New way of doing this:
		@picture = Picture.new(params[:picture])
		if @picture.save
		# Which is basically the same as this:
		# @picture.create(:url => params[:url], :title => params[:title]...)
		# Look at the documentation for 'create' to understand
		# the differences and why this is better
			redirect_to pictures_path # See update method for more information
		else
			flash.now[:error] = "Did not save the picture!"
			render :new 
			# NOT 'redirect_to new_picture_path' because it will delete any data the
			#user has put into the form because it's recreating the picture.new def
		end		
		# render :text => "Saving a picture. Url: #{params[:url]}, Title: #{params[:title]}, Artist: #{params[:artist]}"
	end

	def edit
		@picture = Picture.find params[:id]
	end

	def update
		# Get the picture I want to update
		@picture = Picture.find params[:id]
		# :id are created by the URL and :picture is created by the form
			# therefore they are separate elements of the param hash

		# Get the new data for the picture
		if @picture.update_attributes(params[:picture])
			# Named routes are convernience methods created by
			#ruby to help us navigate the application
			redirect_to @picture
			# redirect_to pictures_path(@picture.id) is the same thing
			# redirect_to '/pictures#{@picture.id}' is the same thing
		else
			redirect_to pictures_path
			# redirect_to '/pictures' is the same thing
		end
		# success = @picture.update_attributes(
		# 	:title => params[:title], 
		# 	:url => params[:url], 
		# 	:artist => params[:artist]
		# 	)
		# if success
		# 	redirect_to '/pictures'
		# else
		# 	redirect_to '/pictures'
		# end	

		def destroy
			@picture = Picture.find params[:id]
			@picture.destroy
			redirect_to pictures_path
		end
	end


end