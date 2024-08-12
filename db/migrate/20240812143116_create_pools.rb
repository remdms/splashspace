class CreatePools < ActiveRecord::Migration[7.1]
  def change
    create_table :pools do |t|
      t.string :name
      t.references :user, null: false, foreign_key: true
      t.string :address
      t.text :overview
      t.float :price_per_day
      t.string :pool_type
      t.integer :area

      t.timestamps
    end
  end
end
