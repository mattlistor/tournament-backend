class CreateColumns < ActiveRecord::Migration[5.2]
  def change
    create_table :columns do |t|
      t.references :bracket, foreign_key: true
      t.integer :tree_placement
      t.string :name
      t.boolean :interactive

      t.timestamps
    end
  end
end
