class AddPositionColumnToContact < ActiveRecord::Migration[5.1]
  def change
    add_column :contacts, :position, :string
  end
end
