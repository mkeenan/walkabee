class AddUserIdToChildren < ActiveRecord::Migration
  def change
    add_reference :children, :user_id, index: true
  end
end
