class CreateBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :books do |t|
      t.string :genre
      t.string :title
      t.string :author
      t.string :publisher
      t.integer :quantity
      t.integer :lost
      t.string :isbn

      t.timestamps
    end
  end
end
