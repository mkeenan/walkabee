class CreateChildren < ActiveRecord::Migration
  def change
    create_table :children do |t|
      t.string :first_name

      t.timestamps
    end
  end
end
