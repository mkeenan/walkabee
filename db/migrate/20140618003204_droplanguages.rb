class Droplanguages < ActiveRecord::Migration
  def change
  	drop_table :languages
  end
end
