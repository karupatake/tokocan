class CreateWrites < ActiveRecord::Migration[5.1]
  def change
    create_table :writes do |t|
      t.string :heading
      t.string :small_heading
      t.text :content
      t.string :image

      t.timestamps
    end
  end
end
