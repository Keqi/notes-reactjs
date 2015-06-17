class RenameHashAttrToHex < ActiveRecord::Migration
  def change
    rename_column :boards, :hash, :hex
  end
end
