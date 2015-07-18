class AddColorToNote < ActiveRecord::Migration
  def change
    add_column :notes, :colour, :string
  end
end
