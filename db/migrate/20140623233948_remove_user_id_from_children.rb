class RemoveUserIdFromChildren < ActiveRecord::Migration
  def change
  	remove_column :children, :user_id_id
  end
end
