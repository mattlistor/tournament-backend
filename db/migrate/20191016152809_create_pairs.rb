class CreatePairs < ActiveRecord::Migration[5.2]
  def change
    create_table :pairs do |t|
      t.references :bracket, foreign_key: true
      t.integer :top_seed_id
      t.integer :bottom_seed_id
      t.boolean :interactive
      t.integer :column_id
      t.integer :tree_placement

      t.timestamps
    end
  end
end
