class AddUserIdToChildrenAgain < ActiveRecord::Migration
  def change
    add_reference :children, :user, index: true
  end
end
