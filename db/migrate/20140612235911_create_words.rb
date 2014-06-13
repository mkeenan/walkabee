class CreateWords < ActiveRecord::Migration
  def change
    create_table :words do |t|
      t.string :title
      t.string :image

      t.timestamps
    end
  end
end
