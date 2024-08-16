class CreateSavedPools < ActiveRecord::Migration[7.1]
  def change
    create_table :saved_pools do |t|
      t.references :user, null: false, foreign_key: true
      t.references :pool, null: false, foreign_key: true

      t.timestamps
    end
    add_index :saved_pools, [:user_id, :pool_id], unique: true
  end
end
