class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.string :category
      t.text :synopsis
      t.integer :year_published
      t.timestamps null: false
    end
  end
end
