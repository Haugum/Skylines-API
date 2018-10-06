class CreateUnits < ActiveRecord::Migration[5.2]
  def change
    create_table :units do |t|
      t.string :name
      t.string :address
      t.string :coordinates
      t.float :price
      t.string :status
      t.boolean :active
      t.references :broker, foreign_key: true

      t.timestamps
    end
  end
end
