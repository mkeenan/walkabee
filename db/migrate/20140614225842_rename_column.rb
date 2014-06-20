class RenameColumn < ActiveRecord::Migration
  def change
  	rename_column :words, :title, :name 
  end
end
