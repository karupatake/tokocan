class AddTitleToWrites < ActiveRecord::Migration[5.1]
  def change
    add_column :writes, :title, :string
    add_column :writes, :description, :text
  end
end
