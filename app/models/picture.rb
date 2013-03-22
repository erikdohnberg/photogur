class Picture < ActiveRecord::Base
	# Very different from accr_accessor!!
	# Allows mass-assignment for the attributes title and artist
	attr_accessible :title, :artist, :url, :copyrighted

	validates :title, :presence => true
	validates :url, { # this hash was added because it is actually calling a 
						# second parameter and it is normally just implied to exist
						# We are including it this time because it is more readable this way
		:presence => true,
		:format => {
			:with => /^https?:/,
			:message =>"Please enter a valid URL"
		}
	}

	scope :free, where(:copyrighted => false)
	scope :alphabetical, order("title ASC")
end
