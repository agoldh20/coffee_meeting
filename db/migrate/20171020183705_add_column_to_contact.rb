class AddColumnToContact < ActiveRecord::Migration[5.1]
  def change
    add_column :contacts, :thank_you, :string
  end
end
