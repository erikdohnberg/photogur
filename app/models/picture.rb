class Picture < ActiveRecord::Base
	# Very different from accr_accessor!!
	# Allows mass-assignment for the attributes title and artist
	attr_accessible :title, :artist, :url

	validates :title, :presence => true
	validates :url, :presence => true

end
