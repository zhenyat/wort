class AddContentToCases < ActiveRecord::Migration[7.1]
  def change
    add_column :cases, :content, :text
  end
end
