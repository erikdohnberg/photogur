# Generated with:
	# rails generate migration picture
class CreatePictures < ActiveRecord::Migration
  def up
  	create_table :pictures do |t|
  		t.string :title
  		t.string :artist
  		t.string :url
  	end
  end

  def down
  end
end