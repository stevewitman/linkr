class AddLabelsToLinks < ActiveRecord::Migration
  def change
    add_column :links, :labels, :string
  end
end
