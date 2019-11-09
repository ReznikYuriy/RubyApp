class CreateAnimals < ActiveRecord::Migration[6.0]
  def change
    create_table :animals do |t|
      t.string :name
      t.string :type
      t.binary :foto

      t.timestamps
    end
  end
end