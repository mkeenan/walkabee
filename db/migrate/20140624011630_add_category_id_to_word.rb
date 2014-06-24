class AddCategoryIdToWord < ActiveRecord::Migration
  def change
  	add_reference :words, :category, index: true
  end
end
