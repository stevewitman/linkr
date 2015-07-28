class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.string :title
      t.text :url
      t.string :linkr_url
      t.text :description
      t.string :status
      t.integer :rating
      t.timestamps null: false
    end
  end
end
