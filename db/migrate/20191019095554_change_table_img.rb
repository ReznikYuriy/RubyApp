class ChangeTableImg < ActiveRecord::Migration[6.0]
  def change
    rename_column :animals, :image, :avatar
  end
end
