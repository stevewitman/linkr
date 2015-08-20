class ChangeColumnNamesInLinks < ActiveRecord::Migration
  def change
    rename_column :links, :title, :name
    rename_column :links, :description, :notes
  end
end
