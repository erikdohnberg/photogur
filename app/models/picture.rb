class Picture < ActiveRecord::Base
	# Very different from accr_accessor!!
	# Allows mass-assignment for the attributes title and artist
	attr_accessible :title, :artist, :url
end
