class AddCopyrightToPictures < ActiveRecord::Migration
  def change
  	add_column :pictures, :copyrighted, :boolean

# Used to automatically assign whether or not all images are copyrighted
  	# Picture.all.each do |picture|
  	# 	picture.copyrighted = false
  	# 	picture.save!
  	# end
  	
  end
end
