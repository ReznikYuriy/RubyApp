class ChangeColumnName2 < ActiveRecord::Migration[6.0]
  def change
    rename_column :animals, :foto, :image
  end
end
