class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name
      t.string :image
      t.string :video

      t.timestamps
    end
  end
end
