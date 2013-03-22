class AddCopyrightToPictures < ActiveRecord::Migration
  def change
  	add_column :pictures, :copyrighted, :boolean
  end
end
