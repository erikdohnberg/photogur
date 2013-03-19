class PicturesController < ApplicationController		# NOT:ActionController::Base
	before_filter :load_pictures

	def index

	end

	def show
		@picture = @pictures[params[:id].to_i]
	end

	def load_pictures
		@pictures = [
			{
			 :title =>"Stay classy Planet Earth",
			 :artist =>"Irfan",
			 :url =>"http://distilleryimage11.s3.amazonaws.com/20f21366904511e2bbd422000a1f9ab2_7.jpg"
		    },
		    {
			 :title =>"Poo Super Class Method",
			 :artist =>"Hamant",
			 :url =>"http://distilleryimage6.s3.amazonaws.com/8158dad88c5211e282e022000a1fbc68_7.jpg"
			},
			{
			 :title =>"Hamant Impersonations",
			 :artist =>"Hamant",
			 :url =>"http://distilleryimage7.s3.amazonaws.com/f8bcd6528c5111e28b6c22000a1f8db8_7.jpg"
			}
	   ]
	end

end