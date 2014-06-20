class CreateChildWords < ActiveRecord::Migration
  def change
    create_table :child_words do |t|
      t.references :child, index: true
      t.references :word, index: true

      t.timestamps
    end
  end
end
