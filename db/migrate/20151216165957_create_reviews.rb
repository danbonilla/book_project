class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string  :reviewer
      t.text  :body
      t.integer :stars
      t.belongs_to :book, index: true
      t.timestamps null: false
    end
  end
end
