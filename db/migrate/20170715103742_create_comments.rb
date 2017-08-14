class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.belongs_to :shop
      t.text :content
      t.integer :stars
      t.timestamps null: false
    end
  end
end
