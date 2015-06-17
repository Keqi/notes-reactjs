class RenameUsersToBoard < ActiveRecord::Migration
  def change
    rename_table :users, :boards
    rename_column :notes, :user_id, :board_id
  end
end
